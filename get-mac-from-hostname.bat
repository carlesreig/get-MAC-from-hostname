::this script will show a MAC address from a local hostname-IP
::you can also call this script with a hostname/IP, for ex -> get-mac-from-hostname.bat 192.168.1.1
::twitter -> @carlesreig
::blog -> www.carlesreig.com
@ECHO OFF
::SETLOCAL ENABLEEXTENSIONS enabledelayedexpansion
TITLE get MAC from hostname/IP
::if no parameter "%1" is set then asks for it
IF "%1"=="" GOTO PREGUNTA
:RESPOSTA
SET targetDevice=%1
FOR /F "tokens=3 delims== " %%G in ('
    ping -4 -n 1 %targetDevice%^|findstr /i "TTL="') DO SET targetIP=%%G
::":~0,-1" deletes last char from string
arp -a %targetIP:~0,-1%
PAUSE
GOTO SORTIR
:PREGUNTA
::ask for target device
ECHO Type target hostname or IP from your network
SET /P targetDevice=
GOTO RESPOSTA
:SORTIR
EXIT /B
