# Inkscape Symbols Libraries Installer (PowerShell)
# 24,900+ symbols for Inkscape

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Inkscape Symbols Libraries Installer" -ForegroundColor Cyan
Write-Host "  24,900+ symbols for Inkscape" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Define Inkscape symbols directory
$inkscapeDir = "$env:APPDATA\inkscape\symbols"

# Check if directory exists
if (-not (Test-Path $inkscapeDir)) {
    Write-Host "Inkscape symbols directory not found." -ForegroundColor Yellow
    Write-Host "Creating: $inkscapeDir"
    try {
        New-Item -ItemType Directory -Path $inkscapeDir -Force | Out-Null
        Write-Host "Directory created successfully." -ForegroundColor Green
    }
    catch {
        Write-Host "ERROR: Could not create directory." -ForegroundColor Red
        Write-Host "Please make sure Inkscape is installed." -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
}

Write-Host "Installing to: $inkscapeDir" -ForegroundColor White
Write-Host ""

# Get all SVG files in current directory
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$svgFiles = Get-ChildItem -Path $scriptDir -Filter "*.svg"

Write-Host "Found $($svgFiles.Count) symbol libraries to install..." -ForegroundColor White
Write-Host ""

# Copy files with progress
$copied = 0
$failed = 0

foreach ($file in $svgFiles) {
    try {
        Write-Host "Copying: $($file.Name)" -ForegroundColor Gray
        Copy-Item -Path $file.FullName -Destination $inkscapeDir -Force
        $copied++
    }
    catch {
        Write-Host "  FAILED: $($file.Name)" -ForegroundColor Red
        $failed++
    }
}

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan

if ($failed -eq 0) {
    Write-Host "SUCCESS! Installed $copied symbol libraries." -ForegroundColor Green
}
else {
    Write-Host "Installed $copied libraries. $failed failed." -ForegroundColor Yellow
}

Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Please restart Inkscape to use the symbols." -ForegroundColor White
Write-Host "Access via: Object > Symbols (Ctrl+Shift+Y)" -ForegroundColor White
Write-Host ""
Read-Host "Press Enter to exit"
