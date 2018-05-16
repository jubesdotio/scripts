@echo off
title Ultimate Backup Tool
goto menu
:menu
cls
echo                                Ultimate Backup tool
echo                                    by Gigadroid
echo                                 xda-developers.com
echo.
echo Notices:
echo Make sure that USB Debugging is enabled!
echo This will not back up SMS messages!
echo Set a desktop backup password under Developer Options. It seems it would fail otherwise!
echo The backup will be saved in C:\backup\backup.ab
echo.
echo What would you like to do?
echo.
echo 1. Backup all without system apps
echo 2. Backup all with system apps (unsafe)
echo 3. Backup app and device data (not the APKs themselves)
echo 4. Backup apps
echo 5. Backup device shared storage / SD card contents
echo 6. Restore
echo 7. Quit
echo.
:choice
set /P C=Choose a option:
if "%C%"=="7" goto quit
if "%C%"=="6" goto restore
if "%C%"=="5" goto sd
if "%C%"=="4" goto apps
if "%C%"=="3" goto appsdevice
if "%C%"=="2" goto system
if "%C%"=="1" goto all
goto choice
:all
echo Look at your phone.
echo Wait until you see a message saying 'Backup complete' or your phone returns to the home screen.
adb backup -apk -shared -all -nosystem -f C:\backup\backup.ab
goto menu
:system
echo Look at your phone.
echo Wait until you see a message saying 'Backup complete' or your phone returns to the home screen.
adb backup -apk -shared -all -system -f C:\backup\backup.ab
goto menu
:appsdevice
echo Look at your phone.
echo Wait until you see a message saying 'Backup complete' or your phone returns to the home screen.
adb backup -all -f C:\backup\backup.ab
goto menu
:apps
echo Look at your phone.
echo Wait until you see a message saying 'Backup complete' or your phone returns to the home screen.
adb backup -apk -noshared - nosystem -f C:\backup\backup.ab
goto menu
:sd
echo Look at your phone.
echo Wait until you see a message saying 'Backup complete' or your phone returns to the home screen.
adb backup -noapk -shared -nosystem -f C:\backup\backup.ab
goto menu
:restore
echo Look at your phone and type your password.
adb restore C:\backup\backup.ab
goto menu
:quit
exit
:end