local composer = require("composer")
local scene = composer.newScene()
local graphics = require("graphics")

print("Win.lua")


function scene:create(event)
    sceneGroup = self.view
    local choicevv = display.newRect(500, 250, 50, 50)
    choicevv:setFillColor(0, 1, 0)
    sceneGroup:insert( choicevv )
    local function Win(event)
        composer.gotoScene("YouWin")
    end
    choicevv:addEventListener("touch", Win)


end
scene:addEventListener("create", scene)
return scene