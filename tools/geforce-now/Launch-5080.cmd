@echo off
setlocal
cd /d "%~dp0"
if not exist "user" mkdir "user"
set "EDEN_NX2_SPLIT=2"
if not exist "Eden.exe" (
  echo Eden.exe was not found next to this launcher.
  echo Place this script in the extracted Windows build folder.
  pause
  exit /b 1
)
echo Starting portable Eglantine with experimental NX2 GPU split...
echo Set EDEN_NX2_SPLIT=0 in this file if a game crashes.
start "" /wait "%~dp0Eden.exe"
