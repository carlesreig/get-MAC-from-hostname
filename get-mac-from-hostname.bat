@echo off
:: this script will show you a MAC address from a local hostname-IP
title get MAC from hostname or IP
color 1B
echo %date% - %time%
set /P targetDevice = Type target hostname-IP from LAN:
echo %targetDevice%
pause
exit