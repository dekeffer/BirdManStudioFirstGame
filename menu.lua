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
        composer.gotoScene("Story1Scene1")
    end)
end

    local Story2 = display.newCircle( 125, 150, 25 )
    Story2:setFillColor(0, 0, 255)
    sceneGroup:insert(Story2)

    knop2:addEventListener("tap", function()
        composer.gotoScene("tikkenteller")
    end)
end

    local Story3 = display.newCircle( 175, 150, 25 )
    Story3:setFillColor(0, 0, 255)
    sceneGroup:insert(Story3)

    knop2:addEventListener("tap", function()
        composer.gotoScene("tikkenteller")
    end)
end

    local Story4 = display.newCircle( 225, 150, 25 )
    Story4:setFillColor(0, 0, 255)
    sceneGroup:insert(Story4)

    knop2:addEventListener("tap", function()
        composer.gotoScene("tikkenteller")
    end)
end

    local Story5 = display.newCircle( 75, 250, 25 )
    Story5:setFillColor(0, 0, 255)
    sceneGroup:insert(Story5)

    knop2:addEventListener("tap", function()
        composer.gotoScene("tikkenteller")
    end)
end

    local Story6 = display.newCircle( 125, 250, 25 )
    Story6:setFillColor(0, 0, 255)
    sceneGroup:insert(Story6)

    knop2:addEventListener("tap", function()
        composer.gotoScene("tikkenteller")
    end)
end

    local Story7 = display.newCircle( 175, 250, 25 )
    Story7:setFillColor(0, 0, 255)
    sceneGroup:insert(Story7)

    knop2:addEventListener("tap", function()
        composer.gotoScene("tikkenteller")
    end)
end

    local Story8 = display.newCircle( 225, 250, 25 )
    Story8:setFillColor(0, 0, 255)
    sceneGroup:insert(Story8)

    knop2:addEventListener("tap", function()
        composer.gotoScene("tikkenteller")
    end)
end

end

scene.addEventListener("create", scene)

return scene
