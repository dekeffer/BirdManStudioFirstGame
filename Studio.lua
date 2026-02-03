local composer = require("composer")
local scene = composer.newScene()

print("studio.lua")

function scene:create(event)
    local sceneGroup = self.view

    local Logo = display.newImage( "assets/Gamestudiologo.jpg", display.contentCenterX, display.contentCenterY )
    sceneGroup:insert(Logo)
    composer.gotoScene("menu")
end

scene:addEventListener("create", scene)

return scene
