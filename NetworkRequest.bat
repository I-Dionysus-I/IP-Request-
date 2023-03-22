@echo off
setlocal EnableDelayedExpansion

REM Get public IP address using ipify API
set "ip="
for /f "usebackq delims=" %%i in (`curl -s https://api.ipify.org`) do set "ip=%%i"

REM Add IP address to clipboard
echo %ip%| clip

echo IP address copied to clipboard: %ip%
pause >nul