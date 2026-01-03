@echo off
setlocal enabledelayedexpansion

echo ============================================
echo   Inkscape Symbols Libraries Installer
echo   24,900+ symbols for Inkscape
echo ============================================
echo.

:: Check for Inkscape symbols directory
set "INKSCAPE_DIR=%APPDATA%\inkscape\symbols"

:: Check if directory exists, if not try to create it
if not exist "%INKSCAPE_DIR%" (
    echo Inkscape symbols directory not found.
    echo Creating: %INKSCAPE_DIR%
    mkdir "%INKSCAPE_DIR%" 2>nul
    if errorlevel 1 (
        echo ERROR: Could not create directory.
        echo Please make sure Inkscape is installed.
        pause
        exit /b 1
    )
)

echo Installing to: %INKSCAPE_DIR%
echo.

:: Count SVG files
set count=0
for %%f in (*.svg) do set /a count+=1

echo Found %count% symbol libraries to install...
echo.

:: Copy all SVG files
set copied=0
for %%f in (*.svg) do (
    echo Copying: %%f
    copy /Y "%%f" "%INKSCAPE_DIR%\" >nul 2>&1
    if not errorlevel 1 set /a copied+=1
)

echo.
echo ============================================
if %copied%==%count% (
    echo SUCCESS! Installed %copied% symbol libraries.
) else (
    echo Installed %copied% of %count% libraries.
    echo Some files may have failed to copy.
)
echo ============================================
echo.
echo Please restart Inkscape to use the symbols.
echo Access via: Object ^> Symbols (Ctrl+Shift+Y)
echo.
pause
