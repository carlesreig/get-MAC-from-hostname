:: this script will show you a MAC address from a local hostname-IP
:: twitter -> @carlesreig
@echo off
title get MAC from hostname or IP
color 1B
:: if no parameter is set then asks for it
if "%1"=="" GOTO PREGUNTA
:RESPOSTA
set targetDevice=%1
:: if "%targetDevice"== "" echo missing hostname or IP | goto PREGUNTA
:: ping -n 1 -4 %targetDevice% --> fa un sol ping amb IPV4
(for /f "skip=1 tokens=3 delims=" %F in ('ping -n 1 %%targetDevice%%') do @if not defined _A @echo %F&set _A=0) &set "_A="
:: token=3, �s el que ens interessa
:: ping 127.0.0.1 | for /f "skip=3 tokens=3" %a in ('findstr Respuesta') do @echo %a
:: comanda anterior retorna -> 127.0.0.1:
:: haurem de treure els dos punts finals
pause
eof
:PREGUNTA
echo Type target hostname-IP from LAN
set /p targetDevice=
goto :RESPOSTA
pause
color
eof