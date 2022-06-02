--0.Instructions(MUST read the following):
--1.Hardware requirements: Logitech G Hub installed / full screen 1080p / frames 60+ / latency < 150ms
--2.In-game requirements: Script starts at Master Rahool's purchase interface / more than 240000 Glimmer / 45 empty spaces in Armor slots(9 for each armor) / unlocked all 5 of Midnight Oil Suit
--3.How to Import this script:
--  3.1.Open Logitech G Hub
--  3.2.Switch profiles to Destiny 2
--  3.3.Click Scripting
--  3.4.In the new window click CREATE A NEW SCRIPT
--  3.5.Click Script then click Import
--  3.6.Import this Lua file directly
--  3.7.Change something need to be modified
--4.There are 2 places need to be modified by yourself, see the notes for details (at the end of script)
--5.How to START the script: turn on the CapsLock, then click the right mouse button
--6.How to STOP the script: turn off the CapsLock(would teminal within 15 sec) / directly Quit the Logitech G Hub
--7.Please indicate the source when reprinting



function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 2) then
        A1ienShoo7er()
    end
end
 
function A1ienShoo7er()
    while(IsKeyLockOn("capslock")) do
        for i = 1, 10 do
            if (IsKeyLockOn("capslock")) then
                goBuy()
                doBuy()
                goF()
                doF()
            end
        end
        goG()
        buyG()
        --getPosition() 
    end
end
 
function getPosition()
    if IsMouseButtonPressed(1) then
        x, y = GetMousePosition()
        OutputLogMessage("Mouse is at %d, %d\n", x, y)
        Sleep(1000)
    end
end
 
function reacquire()
    PressMouseButton(1)
    Sleep(3150)
    ReleaseMouseButton(1)
end
 
function dismantle()
    PressKey("f")
    Sleep(1200)
    ReleaseKey("f")
end

function goBuy()
    if (IsKeyLockOn("capslock")) then
        PressAndReleaseKey("b")
        MoveMouseTo(31179,24598)
        Sleep(800)
        PressAndReleaseMouseButton(1)
        Sleep(800)
        MoveMouseTo(12021,50169)
        Sleep(500)
        PressAndReleaseMouseButton(1)
        Sleep(250)
        MoveMouseTo(61949,40633)
        Sleep(250)
        PressAndReleaseMouseButton(1)
        Sleep(300)
    end
end

function doBuy()
    for i = 1, 9 do
        if (IsKeyLockOn("capslock")) then
            MoveMouseTo(24691,53327)
            Sleep(100)
            reacquire()
            MoveMouseTo(28208,53327)
            Sleep(100)
            reacquire()
            MoveMouseTo(31658,52962)
            Sleep(100)
            reacquire()
            MoveMouseTo(35004,52841)
            Sleep(100)
            reacquire()
            MoveMouseTo(38624,52962)
            Sleep(100)
            reacquire()
        end
    end
end

function goF()
    if (IsKeyLockOn("capslock")) then
        PressAndReleaseKey("x")
        Sleep(2000)
    end
end

function doF()
    for i = 1, 9 do
        if (IsKeyLockOn("capslock")) then
            MoveMouseTo(47708,16581)
            Sleep(50)
            MoveMouseTo(51294,16277)
            Sleep(300)
            dismantle()
            MoveMouseTo(47640,24113)
            Sleep(50)
            MoveMouseTo(51670,23930)
            Sleep(300)
            dismantle()
            MoveMouseTo(47708,31826)
            Sleep(50)
            MoveMouseTo(51465,31705)
            Sleep(300)
            dismantle()
            MoveMouseTo(47606,38568)
            Sleep(50)
            MoveMouseTo(51602,39054)
            Sleep(300)
            dismantle()
            MoveMouseTo(47811,46099)
            Sleep(50)
            MoveMouseTo(51567,46646)
            Sleep(300)
            dismantle()
        end
    end
end

function goG()
    if (IsKeyLockOn("capslock")) then
        PressAndReleaseKey(0x01)
        Sleep(3500)
    end
end

function buyG()
    for i = 1, 25 do
        if (IsKeyLockOn("capslock")) then
            MoveMouseTo(46820, 11111)       --material position from left to right: 46820 / 50133 / 53547 / 56962  (would change everyday)
            Sleep(700)
            PressAndReleaseMouseButton(1)
            Sleep(700)
            PressAndReleaseMouseButton(1)
            Sleep(700)
            PressAndReleaseMouseButton(1)
            Sleep(700)
            PressAndReleaseMouseButton(1)
            Sleep(100)
            MoveMouseTo(39888, 11111)       --Glimmer position from left to right: 39888 / 42893   (would change everyday)
            Sleep(700)
            PressAndReleaseMouseButton(1)
            Sleep(100)
        end
    end
end
