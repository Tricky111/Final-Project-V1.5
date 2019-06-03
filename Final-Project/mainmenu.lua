local composer = require( "composer" )
 
local mainmenu = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- scene event functions
-- -----------------------------------------------------------------------------------
 

-- create()
function mainmenu:create( event )
 
    local scene2Group = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
function mainmenu:show( event )
 
    local scene2Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

        --hides the status bar
        display.setStatusBar(display.HiddenStatusBar)

        --background
        local background = display.newRect(0, 0, 1080, 1080)
        background:setFillColor( 220/255, 90/255, 100/255)
        scene2Group:insert(background)

        --image
        local typingpng = display.newImageRect( "assets/typing.png", 120, 120 )
        typingpng.x = 160
        typingpng.y = 165
        scene2Group:insert(typingpng)

        --text
        local text = display.newText( "Welcome to QuickType!" , 160, 70, "Times", 35 )
        text:setFillColor(  0/255, 0/255, 0/255 )
        scene2Group:insert(text)
        --text
        local text1 = display.newText( "What's your name?" , 160, 260, native.systemFont, 25 )
        text1:setFillColor(  0/255, 0/255, 0/255 )
        scene2Group:insert(text1)

        --nametextfield
        nameTextfield = native.newTextField( display.contentCenterX, 320, 300, 60 )
        nameTextfield.id = "user name"
        scene2Group:insert(nameTextfield)

        --enterbutton
        local enterButton = display.newImageRect( "assets/enterbutton1.png", 200, 120 )
        enterButton.x = 160
        enterButton.y = 420
        scene2Group:insert(enterButton)

        --go to scene function
        function GoToGame (event)
            nameTextfield:removeSelf()
            composer.gotoScene( "gamescene" )
        end

        enterButton:addEventListener( "touch", GoToGame )

    elseif ( phase == "did" ) then


    end
end
 
 

 
 
-- -----------------------------------------------------------------------------------
-- scene event function listeners
-- -----------------------------------------------------------------------------------
mainmenu:addEventListener( "create", mainmenu )
mainmenu:addEventListener( "show", mainmenu )
-- -----------------------------------------------------------------------------------
 
return mainmenu