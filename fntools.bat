@ECHO OFF
TITLE HWID Checker-discord.gg/fntools
COLOR 0B 

ECHO **********************************
ECHO **********************************
:start
cls

ECHO.
wmic diskdrive get model, serialnumber
ECHO.
ECHO CPU
wmic cpu get serialnumber
ECHO.
ECHO BIOS
wmic bios get serialnumber
ECHO.
ECHO Motherboard
wmic baseboard get serialnumber
ECHO.
ECHO smBIOS UUID
wmic path win32_computersystemproduct get uuid
ECHO.
getmac
ECHO.
ECHO Press any key to get your hardware serials again.
pause > nul
goto start
