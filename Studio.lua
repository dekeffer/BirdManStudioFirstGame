local composer = require("composer")
local scene = composer.newScene()

print("studio.lua")

function scene:create(event)
    local sceneGroup = self.view

    local function listener( event )
    print( "listener called" )
    local Logo = display.newImage( "assets/Gamestudiologo.jpg", display.contentCenterX, display.contentCenterY )
    sceneGroup:insert(Logo)
    print( "Delay gelukt" )
    composer.gotoScene("menu")
    end
  
    timer.performWithDelay(1000, listener)
end

scene:addEventListener("create", scene)

return scene
