::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pMoIDlVdZhfL
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pOoIDixRcDO7Z0EwpWIi
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pOoIDixRcCe4bC4koCBGumjl
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pMoaDxRcexHmOF56rWJO1g==
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pMoaChRKcxO/I1ll52pOugQ=
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pMoaGQ9Rcl/+N0EwpWIi
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pM0NHw9acR2/IAosrA4=
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pMcFDg5LfF/6IF96rWJO1g==
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pNgPHhhIZ1yudgpU
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pNgPHhhIZ1+4ax0irHwi
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pPgoIEkWeh6nDg==
::fBE1pAF6MU+EWH3eyFIiJxFRTxC+N3G3CLQY6vz50+iCtkwfQeszfLPNi/rfYOIW/kTYRrkY5Fl/pNgbHh5Lfx+7Ygp5/CBGumjl
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBBcQwWGJnGGIroL5uT07u6UnmEyc81xcYzUug==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZko0
::ZQ05rAF9IBncCkqN+0xwdVsFAlXi
::ZQ05rAF9IAHYFVzEqQI7MhZdQg2jGEn6MroT5Or094o=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQISqcCtDAch6GW9RradMy27zs6l4km7lex/f4ZaAHeAYOMb5QXqcjD9V6GnkYsBjcCjd1Kp79X7vS7mR+Vf8NLS0w==
::dhA7uBVwLU+EWFKM+0MqeUsEH2Q=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJEmW+0g1Kw9oRx6PMmq+BKEe1M3Dyqqzh34paMQWVq73mpa7Ccw3qlO1O8dtmzpstoUJFB44
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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
echo       kz miniADB Toolbox - v1.1 BETA
echo             Vietnamese Version
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
echo version 1.1 - BETA
echo Vietnamese ver.
echo -------------
echo DEVELOPER: khoaz1003
echo -
echo Contact : vokhoa197791@gmail.com
echo Social Media: tiktok.com/@khoaz1003
echo               fackbook.com/@khoaz1003
echo               github.com/khoaz1003
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