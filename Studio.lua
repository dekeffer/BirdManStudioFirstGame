local composer = require("composer")
local scene = composer.newScene()

function scene:create(event)
    local sceneGroup = self.view

    local function listener( event )
    print( "listener called" )
    local Logo = display.newImg( display.contentCenterX, display.contentCenterY )
    sceneGroup:insert(Logo)
    print( "Delay gelukt" )
    composer.gotoScene("menu")
end
end
  
timer.performWithDelay( 1000, listener )
    
