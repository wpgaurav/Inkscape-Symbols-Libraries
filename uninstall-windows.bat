@echo off
setlocal enabledelayedexpansion

echo ============================================
echo   Inkscape Symbols Libraries Uninstaller
echo ============================================
echo.

set "INKSCAPE_DIR=%APPDATA%\inkscape\symbols"

if not exist "%INKSCAPE_DIR%" (
    echo Inkscape symbols directory not found.
    echo Nothing to uninstall.
    pause
    exit /b 0
)

echo This will remove symbol libraries from:
echo %INKSCAPE_DIR%
echo.
set /p confirm="Are you sure? (Y/N): "

if /i not "%confirm%"=="Y" (
    echo Cancelled.
    pause
    exit /b 0
)

echo.
echo Removing symbol libraries...

:: Dynamically find SVG files from the repository directory
set removed=0
for %%f in ("%~dp0*.svg") do (
    if exist "%INKSCAPE_DIR%\%%~nxf" (
        echo Removing: %%~nxf
        del /q "%INKSCAPE_DIR%\%%~nxf" 2>nul
        if not errorlevel 1 set /a removed+=1
    )
)

echo.
echo ============================================
echo Removed %removed% symbol libraries.
echo ============================================
echo.
echo Please restart Inkscape.
echo.
pause
