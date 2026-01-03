#!/bin/bash

# Inkscape Symbols Libraries Installer (Linux)
# 24,900+ symbols for Inkscape

echo "============================================"
echo "  Inkscape Symbols Libraries Installer"
echo "  24,900+ symbols for Inkscape"
echo "============================================"
echo ""

# Define Inkscape symbols directory
INKSCAPE_DIR="$HOME/.config/inkscape/symbols"

# Check if directory exists
if [ ! -d "$INKSCAPE_DIR" ]; then
    echo "Inkscape symbols directory not found."
    echo "Creating: $INKSCAPE_DIR"
    mkdir -p "$INKSCAPE_DIR"
    if [ $? -ne 0 ]; then
        echo "ERROR: Could not create directory."
        echo "Please make sure you have write permissions."
        exit 1
    fi
fi

echo "Installing to: $INKSCAPE_DIR"
echo ""

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Count SVG files
COUNT=$(ls -1 "$SCRIPT_DIR"/*.svg 2>/dev/null | wc -l)
echo "Found $COUNT symbol libraries to install..."
echo ""

# Copy files
COPIED=0
for file in "$SCRIPT_DIR"/*.svg; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "Copying: $filename"
        cp "$file" "$INKSCAPE_DIR/"
        if [ $? -eq 0 ]; then
            ((COPIED++))
        fi
    fi
done

echo ""
echo "============================================"
if [ $COPIED -eq $COUNT ]; then
    echo "SUCCESS! Installed $COPIED symbol libraries."
else
    echo "Installed $COPIED of $COUNT libraries."
fi
echo "============================================"
echo ""
echo "Please restart Inkscape to use the symbols."
echo "Access via: Object > Symbols (Ctrl+Shift+Y)"
echo ""
