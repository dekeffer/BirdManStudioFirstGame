local composer = require("composer")
local scene = composer.newScene()
local graphics = require("graphics")

print("G1C1-1")


function scene:create(event)
    sceneGroup = self.view

    local title = display.newText({
        text = "Yes!",
        x = display.contentCenterX,
        y = 50,
        fontSize = 35
    })
    sceneGroup:insert(title)
    timer.performWithDelay( 2000, function()
        composer.gotoScene("Win")
    end)

end
scene:addEventListener("create", scene)
return scene