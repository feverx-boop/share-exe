@echo off
REM Wi-Fi Switcher - Windows Batch Script
REM This script runs the wifi-switcher tool with predefined parameters

wifi-switcher-windows-amd64.exe ^
  --ssid-a "Lotus's Corp CS" ^
  --psk-a "Patipung@5082#KunWAN" ^
  --ssid-b "Lotus's Corp New" ^
  --psk-b "Teerawan@2356#Kunpung" ^
  --api-url "https://jsonplaceholder.typicode.com/posts/1"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Wi-Fi switcher failed with exit code %ERRORLEVEL%
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo SUCCESS: Wi-Fi switch completed successfully
pause
