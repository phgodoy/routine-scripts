@echo off
cls
set data=%date:~6,4%-%date:~3,2%-%date:~0,2%
set hora=%time:~0,2%:%time:~3,2%
set titulo=(%data%/%hora%)=
echo /%titulo%-%USERNAME%-%ComSpec%-%PROCESSOR_LEVEL%-%Path%-%HOMEPATH%> \Users\%USERNAME%\Desktop\report.txt 
pause