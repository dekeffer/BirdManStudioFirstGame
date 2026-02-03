local composer = require("composer")
local scene = composer.newScene()
local graphics = require("graphics")

print("Win.lua")


function scene:create(event)
    local wintext = display.newText("YOU WIN", display.contentCenterX, display.contentCenterY, 200, 200)


end
scene:addEventListener("create", scene)
return scene