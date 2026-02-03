local composer = require("composer")
local scene = composer.newScene()
local graphics = require("graphics")
print("menu.lua")

local function Startlevel1(event)
    composer.gotoScene("Win")
end
function scene:create(event)
    local sceneGroup = self.view
    local levelEenBut = display.newRect(display.contentCenterX, display.contentCenterY, 200, 200)
    levelEenBut:addEventListener("touch", Startlevel1)
    sceneGroup:insert( levelEenBut )
end

scene:addEventListener("create", scene)
return scene