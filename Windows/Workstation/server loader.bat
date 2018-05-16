@ECHO off
cls
:start
ECHO.
ECHO 1. [Server 1]
ECHO 2. [Server 2]
ECHO 3. [Server 3]
ECHO 4. [Server 4]
ECHO 5. [Server 5]
ECHO 6. [Server 6]
ECHO 7. EXIT
ECHO.
set /p choice=Select?

if '%choice%'=='' ECHO "%choice%" is not valid please try again
if '%choice%'=='1' goto Option1
if '%choice%'=='2' goto Option2
if '%choice%'=='3' goto Option3
if '%choice%'=='4' goto Option4
if '%choice%'=='5' goto Option5
if '%choice%'=='6' goto Option6
if '%choice%'=='7' goto end
ECHO.
goto start
:Option1
start "" "mstsc.exe" -v [Server 1]
goto end
:Option2
start "" "mstsc.exe" -v [Server 2]
goto end
:Option3
start "" "mstsc.exe" -v [Server 3]
goto end
:Option4
start "" "mstsc.exe" -v [Server 4]
goto end
:Option5
start "" "mstsc.exe" -v [Server 5]
goto end
:Option6
start "" "mstsc.exe" -v [Server 6]
goto end
:end
exit