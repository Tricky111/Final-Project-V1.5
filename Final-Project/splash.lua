local composer = require( "composer" )
 
local splash = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- scene event functions
-- -----------------------------------------------------------------------------------
 

-- create()
function splash:create( event )
 
    local scene1Group = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
function splash:show( event )
 
    local scene1Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

        --hides the status bar
        display.setStatusBar(display.HiddenStatusBar)

        --background
        local background = display.newRect(0, 0, 1080, 1080)
        background:setFillColor( 0/255, 100/255, 255/255)
        scene1Group:insert(background)

        --Title1
        local text = display.newText( "QuickType" , 160, 70, "Impact", 60 )
        text:setFillColor(  100/255, 250/255, 0/255 )
        scene1Group:insert(text)
        --Title2
        local text1 = display.newText( "Interactive Type Learner" , 160, 160, native.systemFont, 27 )
        text1:setFillColor( 100/255, 250/255, 200/255 )
        scene1Group:insert(text1)
        --Title3
        local text2 = display.newText( "Loading..." , 170, 430, native.systemFont, 35 )
        text2:setFillColor( 0/255, 0/255, 0/255 )
        scene1Group:insert(text2)

        
        --loading icon spritesheet
        local loadingOptions =
        {
            width = 102,
            height = 102,
            numFrames = 8
        }
        local sheetIdleKnight = graphics.newImageSheet( "./assets/spritesheets/loading1.png",  loadingOptions )
        -- sequences table
        local sequence_data = {
            -- consecutive frames sequence
            {
                name = "idle",
                start = 1,
                count = 8,
                time = 500,
                loopCount = 3,
                sheet = sheetIdleKnight
            },
        }
        
        
        --loading icon png
        loading = display.newSprite( sheetIdleKnight, sequence_data )
        loading.x = 160
        loading.y = 310
        loading.xScale = 120/102
        loading.yScale = 120/102
        scene1Group:insert(loading)

        loading:play()

    elseif ( phase == "did" ) then
        timer.performWithDelay(1500, function()
            composer.gotoScene( "mainmenu" )
        end
        )


    end
end
 
 

 
 
-- -----------------------------------------------------------------------------------
-- scene event function listeners
-- -----------------------------------------------------------------------------------
splash:addEventListener( "create", splash )
splash:addEventListener( "show", splash )
-- -----------------------------------------------------------------------------------
 
return splash