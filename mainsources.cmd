@echo off
title kz miniADB Toolbox - v1.0 BETA

set ADB_EXE="SOURCE\adb.exe"

:START_CHECK
cls
echo =================================================
echo     I  v  
echo     I v  vvvvvv   
echo     Iv       v   IV.VI I IV I I
echo     I v     v    I   I I I vI I ADB TOOLBOX
echo     I  v vvvvvv
echo =================================================
echo Kiem tra thiet bi ADB...
timeout /t 1 /nobreak > nul
echo ===============
%ADB_EXE% devices
echo.
echo Cho mot lat de khoi dong tools...
timeout /t 1 /nobreak > nul 
goto MENU

:MENU
cls
echo ===========================================
echo                  Welcome!
echo       kz miniADB Toolbox - v1.0 BETA
echo ===========================================
echo .
echo 1. Kiem tra danh sanh cac thiet bi dang ket noi
echo 2. Khoi dong lai thiet bi
echo 3. Khoi dong lai vao che do Recovery
echo 4. Khoi dong lai vao che do Bootloader/Fastboot
echo 5. Cai dat mot file APK (adb install)
echo 6. Chay Shell
echo 7. Xem logcat
echo 8. Trinh chieu man hinh qua ADB
echo 9. Thong tin phien ban va nha phat trien
echo 10. Thoat tools
echo .
echo ===========================================
set /p "choice=Nhap lua chon cua ban (1-9): "

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
echo Dang kiem tra cac thiet bi da ket noi...
%ADB_EXE% devices
echo.
pause
goto MENU

:: -------------------------------------------
:reboot
cls
echo Dang khoi dong lai thiet bi, vui long cho...
%ADB_EXE% reboot
echo.
pause
goto MENU

:: -------------------------------------------
:rebootrecover
cls
echo Dang khoi dong lai vao che do Recovery, vui long cho...
%ADB_EXE% reboot recovery
echo.
pause
goto MENU

:: -------------------------------------------
:rebootbld
cls
echo Dang khoi dong lai vao che do Bootloader/Fastboot, vui long cho...
%ADB_EXE% reboot bootloader
echo.
pause
goto MENU

:: -------------------------------------------
:apkinstall
cls
echo Cai dat file APK
echo Cach thuc hien: Vui long keo file apk muon cai dat vao thu muc chua tool nay.
set /p "apk_path=Nhap ten file APK (vi du: games.apk): "
echo Dang cai dat %apk_path%...
%ADB_EXE% install "%apk_path%"
echo.
pause
goto MENU

:: -------------------------------------------
:shell
cls
echo Chay ADB Shell.
echo Ban dang o muc ADB Shell. De thoat, go "exit" va nhan Enter.
%ADB_EXE% shell
echo NHAN ENTER DE THOAT...
echo.
pause
goto MENU

:: -------------------------------------------
:logcat
cls
echo Dang trich xuat logcat (Nhan to hop Ctrl+C roi nhan Y de thoat).
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
echo version 1.0 - BETA
echo -------------
echo DEVELOPER: khoaz1003
echo -
echo Contact : vokhoa197791@gmail.com
echo Social Media: tiktok.com/@khoaz1003
echo               fackbook.com/@khoaz1003
echo -------------
echo Cam on vi ban da su dung tools!
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
echo Trinh chieu man hinh dien thoai qua Scrcpy
echo Vui long cho mot chut....
echo .
echo .
timeout /t 1 /nobreak > nul
"SOURCE/scrcpy.exe"
echo .
echo Neu co thong bao 'Could not f1nd any ADB device' nghia la khong co thiet bi nao dang ket noi. 
echo Vui long kiem tra lai thiet bi, day cap hoac dung lenh so 1 de kiem tra lai ket noi ADB.
echo .
echo Nhan ENTER de thoat.
echo . 
pause
goto MENU
::-------------------------------------------
:END
cls
echo Dang don dep...
echo Tam biet! cam on vi ban da su dung tools!
timeout /t 1 /nobreak > nul
exit