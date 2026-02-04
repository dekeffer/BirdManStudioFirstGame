local composer = require("composer")
local scene = composer.newScene()

function scene:create(event)
    sceneGroup = self.view
    local choicevv = display.newRect(100, 100, 50, 50)
    choicevv:setFillColor(0, 1, 0)
    sceneGroup:insert(choicevv)
    local TEXT = display.newText( "You Win", display.contentCenterX, display.contentCenterY, native.systemFont, 30 )
    sceneGroup:insert(TEXT)
    local function Win(event)
        composer.gotoScene("menu")
    end
    choicevv:addEventListener("touch", Win)

end
scene:addEventListener("create", scene)
return scene