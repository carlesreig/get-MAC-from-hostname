@echo off
:: this script will show you a MAC address from a local hostname-IP
title get MAC from hostname or IP
color 1B
echo %date% - %time%
:PREGUNTA
echo Type target hostname-IP from LAN
set /p targetDevice = 
:: if "%targetDevice" == "" echo missing hostname or IP | goto PREGUNTA
ping -n 1 %targetDevice%
pause
color
exit