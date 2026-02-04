local composer = require("composer")
local scene = composer.newScene()
local graphics = require("graphics")

print("Win.lua")

function scene:create(event)
    sceneGroup = self.view
    local choice1 = display.newImage( sceneGroup, "images/pick.jpg", display.contentCenterX, display.contentCenterY)
    local choicevv = display.newRect(100, 100, 50, 50)
    choicevv:setFillColor(0, 1, 0)
    sceneGroup:insert(choicevv)
    local choicebb = display.newRect (400, 100, 50 , 50)
    choicebb:setFillColor(0, 0, 1)
    sceneGroup:insert(choicebb)
    local cheese = display.newCircle(display.contentCenterX - 300, display.contentCenterY + 100, 10, 10)
    cheese:setFillColor (1, 1, 0)
    cheese.isVisible = true
    sceneGroup:insert(cheese)
    score = 0
    local Zero = display.newText("0", display.contentCenterX, display.contentCenterY)
    sceneGroup:insert(Zero)
    local function kaas(event)
        if event.phase == "began" then
            score = score + 1
            print(score)
            display.remove(Zero)
            local scoreT = display.newText(score, display.contentCenterX, display.contentCenterY)
            sceneGroup:insert(scoreT)
            cheese.isVisible = false
        end
    end
    local function Win(event)
        composer.gotoScene("G1C1-1")
    end
    local function Lose(event)
        composer.gotoScene("G1C1-2")
    end
    choicevv:addEventListener("touch", Win)
    choicebb:addEventListener("touch", Lose)
    cheese:addEventListener("touch", kaas)

end
scene:addEventListener("create", scene)
return scene