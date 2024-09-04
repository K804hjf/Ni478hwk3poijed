@echo off
color 9
echo Spoofer Is Currently IP Unflagging Your Network, Please Wait!"




ipconfig /flushdns >nul
ipconfig /registerdns >nul
ipconfig /release >nul
ipconfig /renew >nul
netsh winsock reset >nul
cls
powershell "[console]::beep(500,300)" >nul
echo IP Unflagged!
timeout 3 >nul
exit