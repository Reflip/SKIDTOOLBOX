@echo off
title SkidToolBox
color 8
mode 120, 30
chcp 65001 >nul
set version=1.0.0
:MAINCHECK
cls
echo ███████╗██╗  ██╗██╗██████╗ ████████╗ ██████╗  ██████╗ ██╗     ██████╗  ██████╗ ██╗  ██╗
echo ██╔════╝██║ ██╔╝██║██╔══██╗╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔══██╗██╔═══██╗╚██╗██╔╝
echo ███████╗█████╔╝ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██████╔╝██║   ██║ ╚███╔╝ 
echo ╚════██║██╔═██╗ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██╔══██╗██║   ██║ ██╔██╗ 
echo ███████║██║  ██╗██║██████╔╝   ██║   ╚██████╔╝╚██████╔╝███████╗██████╔╝╚██████╔╝██╔╝ ██╗
echo ╚══════╝╚═╝  ╚═╝╚═╝╚═════╝    ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
echo.
echo Locating Scripts Folder...
IF EXIST "scripts_skid" (goto :main1)
IF NOT EXIST "scripts_skid" (
echo Scripts Folder Does Not Exist! You Can Download The Scripts At:
echo https://github.com/Reflip/SKIDTOOLBOX
echo Rechecking In Ten Seconds...
timeout 10 /nobreak >nul
goto :MAINCHECK
)

:MAIN1
cls
echo ███████╗██╗  ██╗██╗██████╗ ████████╗ ██████╗  ██████╗ ██╗     ██████╗  ██████╗ ██╗  ██╗
echo ██╔════╝██║ ██╔╝██║██╔══██╗╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔══██╗██╔═══██╗╚██╗██╔╝
echo ███████╗█████╔╝ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██████╔╝██║   ██║ ╚███╔╝ 
echo ╚════██║██╔═██╗ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██╔══██╗██║   ██║ ██╔██╗ 
echo ███████║██║  ██╗██║██████╔╝   ██║   ╚██████╔╝╚██████╔╝███████╗██████╔╝╚██████╔╝██╔╝ ██╗
echo ╚══════╝╚═╝  ╚═╝╚═╝╚═════╝    ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
echo.
echo Welcome back %username%! SkidToolBox IS Almost Ready For You! But First:
echo Would You Like To Download The Newest Updates? (y/n)
choice /c yn >nul
IF %ERRORLEVEL%==1 (
echo Your Current Version Is: %version%
echo Downloading Version 1.0.0
start chrome.exe -incognito https://github.com/Reflip/SKIDTOOLBOX/archive/refs/heads/main.zip
echo Download Started In Chrome.exe
echo.
echo Press Any Key To Go To Main ToolBox.
pause >nul
)
IF %ERRORLEVEL%==2 (echo Entering ToolBox... & timeout 1 /nobreak >nul & goto :main)
goto :main

:main
cd "scripts_skid"
cls
echo ███████╗██╗  ██╗██╗██████╗ ████████╗ ██████╗  ██████╗ ██╗     ██████╗  ██████╗ ██╗  ██╗
echo ██╔════╝██║ ██╔╝██║██╔══██╗╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔══██╗██╔═══██╗╚██╗██╔╝
echo ███████╗█████╔╝ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██████╔╝██║   ██║ ╚███╔╝ 
echo ╚════██║██╔═██╗ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██╔══██╗██║   ██║ ██╔██╗ 
echo ███████║██║  ██╗██║██████╔╝   ██║   ╚██████╔╝╚██████╔╝███████╗██████╔╝╚██████╔╝██╔╝ ██╗
echo ╚══════╝╚═╝  ╚═╝╚═╝╚═════╝    ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
echo.
echo Welcome back %username%!
echo.
echo [1] Pinger
choice /c 1 >nul
IF %ERRORLEVEL%==1 (goto :pinger)
goto :main

:pinger
start pinger.bat
goto :main