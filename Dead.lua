local composer = require("composer")
local scene = composer.newScene()

function scene:create(event)
    sceneGroup = self.view
    local choicevv = display.newRect(100, 100, 50, 50)
    choicevv:setFillColor(0, 1, 0)
    sceneGroup:insert(choicevv)
    local TEXT = display.newText("You Lose", display.contentCenterX, display.contentCenterY, native.systemFont, 30 )
    sceneGroup:insert(TEXT)
    local TEXT1 = display.newText("Made by: Birdman Studio", display.contentCenterX, display.contentCenterY-100, native.systemFont, 20 )
    sceneGroup:insert(TEXT1)
    local function Win(event)
        composer.gotoScene("menu")
    end
    choicevv:addEventListener("touch", Win)

end
scene:addEventListener("create", scene)
return scene