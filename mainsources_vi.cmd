@echo off
title kzminiADB Toolbox - v1.0

set ADB_EXE="adb.exe"

:START_CHECK
cls
echo =================================================
echo      I  v  
echo      I v  vvvvvv   
echo      Iv       v   IV.VI I IV I I
echo      I v     v    I   I I I vI I ADB TOOLBOX
echo      I  v vvvvvv
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
echo          kzminiADB Toolbox - v1.0
echo                 Vietnamese
echo ===========================================
echo .
echo 1. Kiem tra danh sanh thiet bi dang ket noi
echo 2. Khoi dong lai thiet bi
echo 3. Khoi dong lai vao Recovery
echo 4. Khoi dong lai vao Bootloader/Fastboot
echo 5. Cai dat file APK
echo 6. Chay Shell
echo 7. Xem logcat
echo 8. Trinh chieu man hinh qua ADB
echo 9. Thong tin phien ban va nha phat trien
echo 10. Thoat tools
echo .
echo ===========================================
set /p "choice=Nhap lua chon cua ban (1-10): "

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
set /p "apk_path=Keo tha file apk hoac duong dan file vao day: "
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
echo  Thong ve tin phien ban va nha phat trien
echo .
echo   I  v  
echo   I v  vvvvvv   
echo   Iv       v  IV.VI I IV I I
echo   I v     v   I   I I I vI I ADB TOOLBOX   
echo   I  v vvvvvv
echo .
echo =========================================== 
echo kzminiADB Toolbox
echo version 1.0
echo Vietnamese
echo -------------
echo DEVELOPER: khoaz1003
echo -
echo Email lien he: vokhoa197791@gmail.com
echo Mang xa hoi:   tiktok.com/@khoaz1003
echo                fackbook.com/@khoaz1003
echo                github.com/khoaz1003
echo -
echo Neu co bat ki loi nao, xin vui long khieu nai ve email de nha phat trien co the fix som nhat.
echo -
echo Them thong tin ve tools hoac ban cap nhat moi vui long truy cap: 
echo github.com/khoaz1003/kzmini-ADB-Toolbox
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
"scrcpy.exe"
echo .
echo .
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
