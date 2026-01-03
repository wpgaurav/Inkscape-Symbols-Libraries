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

:: List of files to remove (from this repository)
set files=action.svg alert.svg av.svg bootstrap-icons.svg communication.svg content.svg
set files=%files% dashicons-set.svg device.svg editor.svg emojione.svg feather-icons.svg
set files=%files% file.svg font-awesome.svg genericons.svg hardware.svg heroicons-outline.svg
set files=%files% heroicons-solid.svg humble-ui.svg image.svg InkscapeMainToolsSymbols.svg
set files=%files% internet-symbols.svg ionic.svg lucide-icons.svg maps.svg navigation.svg
set files=%files% notification.svg octicons.svg phosphor-icons-fill.svg phosphor-icons.svg
set files=%files% remix-icons.svg simple-icons.svg sjjb-accommodation.svg sjjb-amenity.svg
set files=%files% sjjb-barrier.svg sjjb-education.svg sjjb-food.svg sjjb-health.svg
set files=%files% sjjb-landuse.svg sjjb-money.svg sjjb-poi.svg sjjb-power.svg
set files=%files% sjjb-shopping.svg sjjb-sport.svg sjjb-tourist.svg sjjb-transport.svg
set files=%files% sjjb-water.svg sjjb-worship.svg social.svg StateFace.svg
set files=%files% suru-icon-devices.svg suru-icons-actions.svg suru-icons-apps.svg
set files=%files% suru-icons-mimetypes.svg suru-icons-status.svg tabler-icons-filled.svg
set files=%files% tabler-icons-outline.svg taiga.svg toggle.svg weather-symbols.svg

set removed=0
for %%f in (%files%) do (
    if exist "%INKSCAPE_DIR%\%%f" (
        del /q "%INKSCAPE_DIR%\%%f" 2>nul
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
