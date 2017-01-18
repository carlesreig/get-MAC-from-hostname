:: this script will show you a MAC address from a local hostname-IP
:: you can also call this script with a hostname/IP, for ex -> get-mac-from-hostname.bat 192.168.1.1
:: twitter -> @carlesreig
@echo off
title get MAC from hostname or IP
color 1B
:: if no parameter is set then asks for it
if "%1"=="" GOTO PREGUNTA
:RESPOSTA
set targetDevice=%1
:: ping -n 1 -4 %targetDevice% --> fa un sol ping amb IPV4
:: (for /f "skip=1 tokens=3 delims=" %F in ('ping -n 1 %%targetDevice%%') do @if not defined _A @echo %F&set _A=0) &set "_A="
:: token=3, el que ens interessa
:: ping 127.0.0.1 -n 1 -4 | for /f "tokens=3" %a in ('findstr TTL') do @echo %a
ping %targetDevice% -n 1 -4 | for /f "tokens=3" %%a in ('findstr TTL') do @echo %%a
:: comanda anterior retorna -> 192.168.1.1:
:: haurem de treure els dos punts finals
:: set targetDevice=!targetDevice:~0,-1!
::set targetDevice=%targetDevice:~0,-1%
:: retorna 192.168.1.1:
:: 192.168.1. <- valor actual de la variable %targetDevice%
:: No se encontraron entradas ARP.
:: trobar MAC des de IP -> arp -a <ipaddress>
echo %targetDevice%
arp -a %targetDevice%
color
pause
exit
:PREGUNTA
echo Type target hostname or IP from LAN
set /p targetDevice=
goto :RESPOSTA
pause
eof
