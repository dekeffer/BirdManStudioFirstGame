local composer = require("composer")
local scene = composer.newScene()
local graphics = require("graphics")

print("Win.lua")


function scene:create(event)
    sceneGroup = self.view
    local choice1 = display.newImage("images/pick.jpg", display.contentCenterX, display.contentCenterY)
    sceneGroup:insert(choice1)
    local choicevv = display.newRect(100, 100, 50, 50)
    choicevv:setFillColor(0, 1, 0)
    sceneGroup:insert(choicevv)
    local choicebb = display.newRect (400, 100, 50 , 50)
    choicebb:setFillColor(0, 0, 1)
    sceneGroup:insert(choicebb)
    local function Win(event)
        composer.gotoScene("G1C1-1")
    end
    local function Lose(event)
        composer.gotoScene("G1C1-2")
    end
    choicevv:addEventListener("touch", Win)
    choicevv:addEventListener("touch", Lose)

end
scene:addEventListener("create", scene)
return scene