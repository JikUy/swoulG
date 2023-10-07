@echo off
:sets
set "key="
set "local=local%random%%random%%random%/%username%/%random%/%date%%time%/"
set "datadt={D: %data% T: %time%}"
:rs
cls
title Swoul
:verification
    if exist "config\data" (
        goto :verification2
    ) else (
        set "ef=Data folder"
        goto :error_found
    )
:verification2
    if exist "config" (
        goto :verification3
    ) else (
        set "ef=Config folder"
        goto :error_found
    )
:verification3
    if exist "config\data\ak" (
        goto :verification4
    ) else (
        goto :locked
    )
:verification4
    if exist "config\data\local" (
    echo %local% %datadt% >> config\data\local
        goto :x
    ) else (
    echo %local% %datadt% > config\data\local
        goto :x
    )
:locked
title Swoul Locked
color 04
echo SWOUL LOCKED.
echo get your key here: https://linktr.ee/Swoul
echo Enter your key.
set /p key=
if "%key%"=="k8kLcY48vmW39lIvm36vn88vmdoemc947ahcn8rkvxz7398gmmvir784387cvr8jidy5t4i3uhjtngksdfxyurbfNMdihy589ytdfjikfuTkgfdjk49gtfdkj" (
    echo Succes! Logged. %datadt% > config\data\ak
    echo Key: %key% %datadt% >> config\data\ak
    echo %local% %datadt% >> config\data\ak
    echo.
    echo Good key. When you will start the game you won't get this message again.
    echo.
    pause
    goto :x
) else (
    echo Wrong key. Restarting.
    goto :rs
)
:x
cls
title Swoul Game
color 04
echo SWOUL GAME.
echo Would you like to start the game? (Y/N)
echo Y = Yes / N = No
echo.
set /p choice=
if "%choice%"=="Y" (
    goto :start
) else if "%choice%"=="N" (
    echo You chose not to start the game. Goodbye!
) else if "%choice%"=="y" (
    goto :start
) else if "%choice%"=="n" (
    echo You chose not to start the game. Goodbye!
) else (
    echo Invalid choice. Please enter Y or N.
    goto :x
)
:start_error
cls
echo Invalid choice. Please enter 1 or 2 or 3.
:start
echo.
echo Easy Mod = 1
echo Normal Mod = 2
echo Hard Mod = 3
echo.
set /p mod=
if "%mod%"=="1" (
    goto :easy
) else if "%mod%"=="2" (
    goto :normal
) else if "%mod%"=="3" (
    goto :hard
) else (
    goto :start_error
)

REM ------------------------------------MODS=1----------------------------------------------------
:easy_error
cls
echo Invalid choice. Please enter 1 or 2 or 3.
:easy
cls
echo You entered a dark house..
echo What would you do? (Q/S/W/R)
echo Q = Quit the house, S = Scream, W = Walk in the house, R = Run out of the house.
set /p easychoice=
if "%easychoice%"=="Q" (
    goto :quit
) else if "%easychoice%"=="q" (
    goto :quit
) else if "%easychoice%"=="S" (
    goto :scream
) else if "%easychoice%"=="s" (
    goto :scream
) else if "%easychoice%"=="W" (
    goto :walk
) else if "%easychoice%"=="w" (
    goto :walk
) else if "%easychoice%"=="R" (
    goto :run
) else if "%easychoice%"=="r" (
    goto :run
) else (
    goto :easy_error
)
:quit
cls
echo You were scared, you succesfully escaped.
echo A taxi were here to take you back to your house.
echo You're alive.
start config/escaped.png
start config/escaped.vbs
echo.
pause
exit
:scream
cls
echo You screamed the most as you can but..
echo A ghost ate you.
echo You're dead.
start config/dead.png
start config/dead.vbs
echo.
pause
exit
:walk
cls
echo You walked but..
echo A monster came at you. and put you in his cave.
echo You're captured.
start config/captured.png
start config/captured.vbs
echo.
pause
exit
:run
REM ------------------------------------MODS=2----------------------------------------------------
:normal_error
cls
echo Invalid choice. Please enter 1 or 2 or 3.
:normal
REM ------------------------------------MODS=3----------------------------------------------------
:hard_error
cls
echo Invalid choice. Please enter 1 or 2 or 3.
:hard
REM ------------------------------------ERRORS----------------------------------------------------
:error_found
title ERROR_NF_
cls
echo ERROR NOT FOUND: %ef%
echo.
pause
goto :verification