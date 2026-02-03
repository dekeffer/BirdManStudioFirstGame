local composer = require("composer")
local scene = composer.newScene()
local graphics = require("graphics")

print("Win.lua")


function scene:create(event)
    sceneGroup = self.view
    local choice1 = display.newImage("images/pick.jpg", display.contentCenterX, display.contentCenterY)
    choice1.xScale = 0.5
    choice1.yScale = 0.5
    local choicevv = display.newRect(100, 100, 50, 50)
    choicevv:setFillColor(0, 1, 0)
    local choicebb = display.newRect (400, 100, 50 , 50)
    choicebb:setFillColor(0, 0, 1)
    local function Win(event)
        composer.gotoScene(RoughCut)
    end
    choicevv:addEventListener("touch", Win)

end
scene:addEventListener("create", scene)
return scene