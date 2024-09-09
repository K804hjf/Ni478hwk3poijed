@echo off

net stop winmgmt /y 
net start winmgmt /y
sc stop winmgmt
sc start winmgmt