@echo off
title SkidToolBox - Pinger
color 8
mode 120, 30
chcp 65001 >nul
set version=1.0.0
:pinger
cls
echo ███████╗██╗  ██╗██╗██████╗ ████████╗ ██████╗  ██████╗ ██╗     ██████╗  ██████╗ ██╗  ██╗
echo ██╔════╝██║ ██╔╝██║██╔══██╗╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔══██╗██╔═══██╗╚██╗██╔╝
echo ███████╗█████╔╝ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██████╔╝██║   ██║ ╚███╔╝ 
echo ╚════██║██╔═██╗ ██║██║  ██║   ██║   ██║   ██║██║   ██║██║     ██╔══██╗██║   ██║ ██╔██╗ 
echo ███████║██║  ██╗██║██████╔╝   ██║   ╚██████╔╝╚██████╔╝███████╗██████╔╝╚██████╔╝██╔╝ ██╗
echo ╚══════╝╚═╝  ╚═╝╚═╝╚═════╝    ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝
echo.
set /p ip=IP To Ping ^> 
echo.
:pinger2
ping -n 1 -l 50 %ip% | FIND "time="
timeout 1 /nobreak >nul
IF %ERRORLEVEL%==1 (echo ip ping failed.)
goto :pinger2