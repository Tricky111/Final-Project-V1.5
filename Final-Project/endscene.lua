local composer = require( "composer" )
 
local endscene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- scene event functions
-- -----------------------------------------------------------------------------------
 

-- create()
function endscene:create( event )
 
    local scene4Group = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
function endscene:show( event )
 
    local scene4Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

        --hides the status bar
        display.setStatusBar(display.HiddenStatusBar)

        local text = display.newText( "End!" , 160, 70, "Times", 40 )
        text:setFillColor(  255/255, 0/255, 255/255 )
        scene4Group:insert(text)

    elseif ( phase == "did" ) then


    end
end
 
 

 
 
-- -----------------------------------------------------------------------------------
-- scene event function listeners
-- -----------------------------------------------------------------------------------
endscene:addEventListener( "create", endscene )
endscene:addEventListener( "show", endscene )
-- -----------------------------------------------------------------------------------
 
return endscene