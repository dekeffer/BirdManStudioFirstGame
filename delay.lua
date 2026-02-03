local kaas = display.newText( "kaas", display.contentCenterX, display.contentCenterY, native.systemFont, 30 )

timer.performWithDelay( 2000, function()
    -- Alles hierbinnen gebeurt pas na 2 seconden
    kaas:removeSelf()
    local baas = display.newText( "baas", display.contentCenterX, display.contentCenterY, native.systemFont, 30 )
end )
