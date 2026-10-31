@echo off
setlocal
cd /d "%~dp0"
if not exist "user" mkdir "user"
set "EDEN_NX2_SPLIT=2"
if /I "%~1"=="safe" set "EDEN_NX2_SPLIT=0"
if /I "%~1"=="split1" set "EDEN_NX2_SPLIT=1"
if not exist "%~dp0eglantine.exe" (
 echo Missing eglantine.exe. Extract the full build ZIP first.
 pause
 exit /b 1
)
echo Eglantine portable RTX 5080 profile - GPU split %EDEN_NX2_SPLIT%
"%~dp0eglantine.exe"
exit /b %errorlevel%
