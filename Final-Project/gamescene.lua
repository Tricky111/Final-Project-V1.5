local composer = require( "composer" )
 
local gamescene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- scene event functions
-- -----------------------------------------------------------------------------------
 

-- create()
function gamescene:create( event )
 
    local scene3Group = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
function gamescene:show( event )
 
    local scene3Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

        --hides the status bar
        display.setStatusBar(display.HiddenStatusBar)

        --QuickType title
        local text1 = display.newText( "QuickType" , 70, 30, "Times", 32 )
        text1:setFillColor(  250/255, 0/255, 100/255 )
        scene3Group:insert(text1)

        local text2 = display.newText( "Type the letter that appears here." , 160, 180, native.systemFont, 20 )
        text2:setFillColor(  100/255, 100/255, 100/255 )
        scene3Group:insert(text2)

        local text3 = display.newText( "Your overall key presses: " , 120, 430, native.systemFont, 20 )
        text3:setFillColor(  100/255, 100/255, 100/255 )
        scene3Group:insert(text3)

        local keypressesText = display.newText( "0" , 260, 430, native.systemFont, 35 )
        keypressesText:setFillColor(  250/255, 150/255, 0/255 )
        scene3Group:insert(keypressesText)

        local letterText = display.newText( "" , 160, 120, "courier new", 45 )
        letterText:setFillColor(  255/255, 255/255, 255/255 )
        scene3Group:insert(letterText)

        --Play button to start game/timer
        local startButton = display.newImageRect( "assets/startbutton.png", 100, 100 )
        startButton.x = 160
        startButton.y = 110
        scene3Group:insert(startButton)

        --percentage symbol and text
        local percentageSymbol = display.newText("%", 240, 30, native.systemFontBold, 35)
        percentageSymbol:setTextColor(0,1,1)
        scene3Group:insert(percentageSymbol)

        local percentageText = display.newText("0", 190, 30, native.systemFontBold, 35)
        percentageText:setTextColor(0,1,1)
        scene3Group:insert(percentageText)
        
        --Timer (counting up)
        local currentTime = 0
        local timerUpTimer
        local currentTimeText = display.newText(currentTime, 300, 30, native.systemFontBold, 35)
        currentTimeText:setTextColor(255,0,0)
        scene3Group:insert(currentTimeText)
        --adds counts up by 0.1 every 1/10 of a second
        local function timerUp()
            currentTime = currentTime + 1
            currentTimeText.text = (math.round(currentTime))
        end

        function endscene (event)
            if keypresses >= 100 then

                timer.cancel(timerUpTimer)

                local stats = display.newText("You typed 100 keys in ".. currentTime .. " seconds", 160, 160, native.systemFontBold, 22)
                stats:setTextColor(1,1,1)

                local stats2 = display.newText("You had an accuracy of ".. percentround.. "%", 160, 240, native.systemFontBold, 22)
                stats2:setTextColor(1,1,1)

                local stats3 = display.newText("Correct presses: ".. correctpresses, 160, 300, native.systemFontBold, 22)
                stats3:setTextColor(0,1,1)

                local stats4 = display.newText("Overall presses: ".. keypresses, 160, 330, native.systemFontBold, 22)
                stats4:setTextColor(0,1,1)

                Runtime:removeEventListener( "key", percentage )

                composer.gotoScene( "endscene" )
            end
        end


        --start timer
        function startTimer( event )
            startButton:removeSelf()
            timerUpTimer = timer.performWithDelay(1000, timerUp, 0)
        end

        --background for keyboard
        local keyBackground = display.newRect(160, 275, 350, 134)
        keyBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(keyBackground)

        --key backgrounds
        local aBackground = display.newRect(39, 274, 20, 21)
        aBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(aBackground)

        local bBackground = display.newRect(120, 299, 20, 21)
        bBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(bBackground)

        local cBackground = display.newRect(74, 299, 20, 21)
        cBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(cBackground)

        local dBackground = display.newRect(85, 274, 20, 21)
        dBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(dBackground)

        local eBackground = display.newRect(80, 250, 20, 21)
        eBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(eBackground)

        local fBackground = display.newRect(108, 274, 20, 21)
        fBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(fBackground)

        local gBackground = display.newRect(130, 274, 20, 21)
        gBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(gBackground)

        local hBackground = display.newRect(154, 274, 20, 21)
        hBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(hBackground)

        local iBackground = display.newRect(194, 250, 20, 21)
        iBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(iBackground)

        local jBackground = display.newRect(177, 274, 20, 21)
        jBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(jBackground)

        local kBackground = display.newRect(199, 274, 20, 21)
        kBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(kBackground)

        local lBackground = display.newRect(221, 274, 20, 21)
        lBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(lBackground)

        local mBackground = display.newRect(166, 299, 20, 21)
        mBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(mBackground)

        local nBackground = display.newRect(142, 299, 20, 21)
        nBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(nBackground)

        local oBackground = display.newRect(215, 250, 20, 21)
        oBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(oBackground)

        local pBackground = display.newRect(239, 250, 20, 21)
        pBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(pBackground)

        local qBackground = display.newRect(34, 250, 20, 21)
        qBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(qBackground)

        local rBackground = display.newRect(103, 250, 20, 21)
        rBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(rBackground)

        local sBackground = display.newRect(61, 274, 20, 21)
        sBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(sBackground)

        local tBackground = display.newRect(126, 250, 20, 21)
        tBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(tBackground)

        local uBackground = display.newRect(170, 250, 20, 21)
        uBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(uBackground)

        local vBackground = display.newRect(96, 299, 20, 21)
        vBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(vBackground)

        local wBackground = display.newRect(58, 250, 20, 21)
        wBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(wBackground)

        local xBackground = display.newRect(51, 299, 20, 21)
        xBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(xBackground)

        local yBackground = display.newRect(148, 250, 20, 21)
        yBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(yBackground)

        local zBackground = display.newRect(27, 299, 20, 21)
        zBackground:setFillColor( 1, 1, 1)
        scene3Group:insert(zBackground)


        --keyboard png
        local keyboard = display.newImageRect( "assets/keyboard.png", 390, 300 )
        keyboard.x = 160
        keyboard.y = 290
        scene3Group:insert(keyboard)

        local function RandomLetter ()

            local letter = math.random(1, 26)

            if letter == 1 then
                letterText.text = "a"
                aBackground:setFillColor( 1, 1, 0)
            elseif letter == 2 then
                letterText.text = "b"
                bBackground:setFillColor( 1, 1, 0)
            elseif letter == 3 then
                letterText.text = "c"
                cBackground:setFillColor( 1, 1, 0)
            elseif letter == 4 then
                letterText.text = "d"
                dBackground:setFillColor( 1, 1, 0)
            elseif letter == 5 then
                letterText.text = "e"
                eBackground:setFillColor( 1, 1, 0)
            elseif letter == 6 then
                letterText.text = "f"
                fBackground:setFillColor( 1, 1, 0)
            elseif letter == 7 then
                letterText.text = "g"
                gBackground:setFillColor( 1, 1, 0)
            elseif letter == 8 then
                letterText.text = "h"
                hBackground:setFillColor( 1, 1, 0)
            elseif letter == 9 then
                letterText.text = "i"
                iBackground:setFillColor( 1, 1, 0)
            elseif letter == 10 then
                letterText.text = "j"
                jBackground:setFillColor( 1, 1, 0)
            elseif letter == 11 then
                letterText.text = "k"
                kBackground:setFillColor( 1, 1, 0)
            elseif letter == 12 then
                letterText.text = "l"
                lBackground:setFillColor( 1, 1, 0)
            elseif letter == 13 then
                letterText.text = "m"
                mBackground:setFillColor( 1, 1, 0)
            elseif letter == 14 then
                letterText.text = "n"
                nBackground:setFillColor( 1, 1, 0)
            elseif letter == 15 then
                letterText.text = "o"
                oBackground:setFillColor( 1, 1, 0)
            elseif letter == 16 then
                letterText.text = "p"
                pBackground:setFillColor( 1, 1, 0)
            elseif letter == 17 then
                letterText.text = "q"
                qBackground:setFillColor( 1, 1, 0)
            elseif letter == 18 then
                letterText.text = "r"
                rBackground:setFillColor( 1, 1, 0)
            elseif letter == 19 then
                letterText.text = "s"
                sBackground:setFillColor( 1, 1, 0)
            elseif letter == 20 then
                letterText.text = "t"
                tBackground:setFillColor( 1, 1, 0)
            elseif letter == 21 then
                letterText.text = "u"
                uBackground:setFillColor( 1, 1, 0)
            elseif letter == 22 then
                letterText.text = "v"
                vBackground:setFillColor( 1, 1, 0)
            elseif letter == 23 then
                letterText.text = "w"
                wBackground:setFillColor( 1, 1, 0)
            elseif letter == 24 then
                letterText.text = "x"
                xBackground:setFillColor( 1, 1, 0)
            elseif letter == 25 then
                letterText.text = "y"
                yBackground:setFillColor( 1, 1, 0)
            elseif letter == 26 then
                letterText.text = "z"
                zBackground:setFillColor( 1, 1, 0)
            else
                letterText.text = "<ERROR>"
            end
        end

        
        correctpresses = 0
        keypresses = 0
        --function to determine whether keypress was correct/wrong
        --function resets backgrounds and adds 1 to correctpresses if correct
        --does nothing if wrong
        function keyPress (event)
            if event.keyName == letterText.text and (event.phase == "down") then
                correctpresses = correctpresses + 1
            end


            if (event.keyName == letterText.text) and (event.phase == "up") then

                aBackground:setFillColor( 1, 1, 1)
                bBackground:setFillColor( 1, 1, 1)
                cBackground:setFillColor( 1, 1, 1)
                dBackground:setFillColor( 1, 1, 1)
                eBackground:setFillColor( 1, 1, 1)
                fBackground:setFillColor( 1, 1, 1)
                gBackground:setFillColor( 1, 1, 1)
                hBackground:setFillColor( 1, 1, 1)
                iBackground:setFillColor( 1, 1, 1)
                jBackground:setFillColor( 1, 1, 1)
                kBackground:setFillColor( 1, 1, 1)
                lBackground:setFillColor( 1, 1, 1)
                mBackground:setFillColor( 1, 1, 1)
                nBackground:setFillColor( 1, 1, 1)
                oBackground:setFillColor( 1, 1, 1)
                pBackground:setFillColor( 1, 1, 1)
                qBackground:setFillColor( 1, 1, 1)
                rBackground:setFillColor( 1, 1, 1)
                sBackground:setFillColor( 1, 1, 1)
                tBackground:setFillColor( 1, 1, 1)
                uBackground:setFillColor( 1, 1, 1)
                vBackground:setFillColor( 1, 1, 1)
                wBackground:setFillColor( 1, 1, 1)
                xBackground:setFillColor( 1, 1, 1)
                yBackground:setFillColor( 1, 1, 1)
                zBackground:setFillColor( 1, 1, 1)
                timer.performWithDelay(1, RandomLetter)
            elseif (event.keyName ~= letterText.text) and (event.phase == "up") then
                correctpresses = correctpresses + 0
            end
        end

        function percentage (event)

            if event.phase == "down" then
                keypresses = keypresses + 1
            end

            keypressesText.text = keypresses
            percent = (correctpresses/keypresses)*100
            percentround = math.round(percent)
            percentageText.text = (percentround)
        end

        function keyStart ( event )
            Runtime:addEventListener( "key", keyPress )
            Runtime:addEventListener( "key", percentage )
        end

        Runtime:addEventListener( "enterFrame", endscene )
        startButton:addEventListener( "touch", keyStart )
        startButton:addEventListener( "touch", startTimer )
        startButton:addEventListener( "touch", RandomLetter )
    elseif ( phase == "did" ) then


    end
end
 
 

 
 
-- -----------------------------------------------------------------------------------
-- scene event function listeners
-- -----------------------------------------------------------------------------------
gamescene:addEventListener( "create", gamescene )
gamescene:addEventListener( "show", gamescene )
-- -----------------------------------------------------------------------------------
 
return gamescene