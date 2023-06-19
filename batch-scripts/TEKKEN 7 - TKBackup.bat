@echo off
setlocal

set "source=C:\Users\Lance Nacabuan\AppData\Local\TekkenGame"
set "destination=C:\Users\Lance Nacabuan\OneDrive\Desktop\TekkenGame"

if not exist "%source%" (
    echo Source folder does not exist.
    pause
    exit /b 1
)

if not exist "%destination%" (
    mkdir "%destination%"
)

xcopy /e /y "%source%" "%destination%"
echo BACKUP SUCCESS!

timeout /t 1 /nobreak > nul

exit