local composer = require("composer")
local scene = composer.newScene()

function scene:create(event)
    local sceneGroup = self.view

    local title = display.newText({
        text = "Appleman Legends",
        x = display.contentCenterX,
        y = 50,
        fontSize = 35
    })
    sceneGroup:insert(title)

    local title2 = display.newText({
        text = "choose your story",
        x = display.contentCenterX,
        y = 100,
        fontSize = 30
    })
    sceneGroup:insert(title)

    local Story1 = display.newCircle( 75, 150, 25 )
    Story1:setFillColor(0, 0, 255)
    sceneGroup:insert(Story1)

    Story1:addEventListener("tap", function()
        composer.gotoScene("G1K1")
    end)
end

scene:addEventListener("create", scene)

return scene
