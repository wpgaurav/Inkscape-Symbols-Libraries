#!/bin/bash

# Inkscape Symbols Libraries Uninstaller (Linux)

echo "============================================"
echo "  Inkscape Symbols Libraries Uninstaller"
echo "============================================"
echo ""

INKSCAPE_DIR="$HOME/.config/inkscape/symbols"

if [ ! -d "$INKSCAPE_DIR" ]; then
    echo "Inkscape symbols directory not found."
    echo "Nothing to uninstall."
    exit 0
fi

echo "This will remove symbol libraries from:"
echo "$INKSCAPE_DIR"
echo ""
read -p "Are you sure? (y/N): " confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "Cancelled."
    exit 0
fi

echo ""
echo "Removing symbol libraries..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REMOVED=0

for file in "$SCRIPT_DIR"/*.svg; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        target="$INKSCAPE_DIR/$filename"
        if [ -f "$target" ]; then
            rm "$target"
            if [ $? -eq 0 ]; then
                echo "Removed: $filename"
                ((REMOVED++))
            fi
        fi
    fi
done

echo ""
echo "============================================"
echo "Removed $REMOVED symbol libraries."
echo "============================================"
echo ""
echo "Please restart Inkscape."
echo ""
