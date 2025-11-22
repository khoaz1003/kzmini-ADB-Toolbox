@echo off
title kz miniADB Toolbox - v1.1 BETA

set ADB_EXE="adb.exe"

:START_CHECK
cls
echo =================================================
echo     I  v  
echo     I v  vvvvvv   
echo     Iv       v   IV.VI I IV I I
echo     I v     v    I   I I I vI I ADB TOOLBOX
echo     I  v vvvvvv
echo =================================================
echo Checking ADB devices...
timeout /t 1 /nobreak > nul
echo ===============
%ADB_EXE% devices
echo.
echo Please wait...
timeout /t 1 /nobreak > nul 
goto MENU

:MENU
cls
echo ===========================================
echo                  Welcome!
echo       kz miniADB Toolbox - v1.1 BETA
echo              English Version
echo ===========================================
echo .
echo 1. Checking ADB devices list
echo 2. Reboot device
echo 3. Reboot Recovery
echo 4. Reboot Bootloader/Fastboot
echo 5. APK Installer
echo 6. ADB Shell
echo 7. ADB logcat
echo 8. Screen mirroring via ADB
echo 9. About version and developer
echo 10. Exit
echo .
echo ===========================================
set /p "choice=Choose your mode (1-9): "

if "%choice%"=="1" goto listdevices
if "%choice%"=="2" goto reboot
if "%choice%"=="3" goto rebootrecover
if "%choice%"=="4" goto rebootbld
if "%choice%"=="5" goto apkinstall
if "%choice%"=="6" goto shell
if "%choice%"=="7" goto logcat
if "%choice%"=="8" goto screenmirror-newtest
if "%choice%"=="9" goto ABOUT
if "%choice%"=="10" goto END
goto MENU

:: -------------------------------------------
:listdevices
cls
echo Checking devices...
%ADB_EXE% devices
echo.
pause
goto MENU

:: -------------------------------------------
:reboot
cls
echo Rebooting devices...
%ADB_EXE% reboot
echo.
pause
goto MENU

:: -------------------------------------------
:rebootrecover
cls
echo Reboot Recovery...
%ADB_EXE% reboot recovery
echo.
pause
goto MENU

:: -------------------------------------------
:rebootbld
cls
echo Reboot Bootloader/Fastboot...
%ADB_EXE% reboot bootloader
echo.
pause
goto MENU

:: -------------------------------------------
:apkinstall
cls
echo APK Installer
echo How to install: Drag path/drag file here
set /p "apk_path=Drag path/apk file here: "
echo Install %apk_path%...
%ADB_EXE% install "%apk_path%"
echo.
pause
goto MENU

:: -------------------------------------------
:shell
cls
echo ADB Shell.
echo You're now in ADB Shell. To exit, type "exit" and hit Enter.
%ADB_EXE% shell
echo Hit ENTER to exit...
echo.
pause
goto MENU

:: -------------------------------------------
:logcat
cls
echo Extracting logcat... (Press Ctrl+C then press Y to exit).
%ADB_EXE% logcat
echo.
pause
goto MENU
:: -------------------------------------------
:ABOUT
cls
echo ===========================================
echo        ABOUT VERSION and DEVELOPER
echo   I  v  
echo   I v  vvvvvv   
echo   Iv       v   IV.VI I IV I I
echo   I v     v    I   I I I vI I ADB TOOLBOX
echo   I  v vvvvvv
echo .
echo =========================================== 
echo kz miniADB Toolbox
echo version 1.1 - BETA
echo English ver.
echo -------------
echo DEVELOPER: khoaz1003
echo -
echo Contact : vokhoa197791@gmail.com
echo Social Media: tiktok.com/@khoaz1003
echo               fackbook.com/@khoaz1003
echo               github.com/khoaz1003
echo -------------
echo Thank you for choosing kzminiADB Toolbox!
echo . 
echo .
echo .
echo .
echo .
pause
goto MENU
::-------------------------------------------
:screenmirror-newtest
cls
echo Screen mirroring via Scrcpy
echo Please wait....
echo .
echo .
timeout /t 1 /nobreak > nul
"scrcpy.exe"
echo .
echo .
echo .
echo hit ENTER to exit.
echo . 
pause
goto MENU
::-------------------------------------------
:END
cls
echo Cleaning up...
echo Thank you for choosing kzminiADB Toolbox!
timeout /t 2 /nobreak > nul
exit
