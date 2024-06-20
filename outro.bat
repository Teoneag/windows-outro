echo off
title Outro

start powershell -WindowStyle Hidden -Command "D:\desktop\outro\play_outro.ps1"
set /a STARTTIME = 11,00

cls

:looped
echo Shuting down in %STARTTIME% seconds
set /a STARTTIME = %STARTTIME% - 1
timeout 1 /nobreak >nul

if %STARTTIME%==0 (
 goto startgame
)

goto looped

:startgame
shutdown -s -t 0