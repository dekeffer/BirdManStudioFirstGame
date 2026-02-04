local composer = require("composer")
local scene = composer.newScene()

function scene:create(event)
    sceneGroup = self.view
    local death = display.newImage("assets/Naamloos.jpg", display.contentCenterX, display.contentCenterY)
    death.xScale = 0.5
    death.yScale = 0.5
    sceneGroup:insert(death)
    local choicevv = display.newRect(display.contentCenterX+290, display.contentCenterY-110, 50, 50)
    choicevv:setFillColor(0, 1, 0)
    sceneGroup:insert(choicevv)
    local TEXT = display.newText("You Lose", display.contentCenterX, display.contentCenterY-35, native.systemFont, 30 )
    sceneGroup:insert(TEXT)
    TEXT:setFillColor(0, 0, 5)
    local TEXT1 = display.newText("Made by: Birdman Studio", display.contentCenterX, display.contentCenterY-115, native.systemFont, 20 )
    sceneGroup:insert(TEXT1)
    TEXT1:setFillColor(0, 0, 5)
    local eScore = display.newText( "Your score : " .. score, display.contentCenterX, display.contentCenterY+115, native.systemFont, 30 )
    eScore:setFillColor(0, 0, 5)
    sceneGroup:insert(eScore)
    local function Win(event)
        composer.gotoScene("menu")
    end
    choicevv:addEventListener("touch", Win)

end
scene:addEventListener("create", scene)
return scene