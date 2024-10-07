@echo off
color 9
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrator privileges.
    echo.
    echo Requesting elevated privileges...
    powershell -Command "Start-Process '%~0' -Verb runAs"
    exit /b
)
pushd %~dp0
echo Removing flags, please wait!
ipconfig /flushdns >nul
ipconfig /registerdns >nul
ipconfig /release >nul
ipconfig /renew >nul
netsh winsock reset >nul
sc config RasAuto start= disabled
sc stop RasAuto
sc config SstpSvc start= disabled
sc stop SstpSvc

echo.
echo.
echo Unflagged!
pause
exit
