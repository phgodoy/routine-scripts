@echo off
cls
echo.
echo.
set  /p projectName = nome do diretorio:
echo "%projectName%"
mkdir "%projectName%"\srcipts
mkdir "%projectName%"\srcipts\client
mkdir "%projectName%"\srcipts\server
mkdir "%projectName%"\css
mkdir "%projectName%"\media\images
mkdir "%projectName%"\media\videos
mkdir "%projectName%"\media\sounds
mkdir "%projectName%" >"%projectName%"\index.html