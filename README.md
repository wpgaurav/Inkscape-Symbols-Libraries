# Inkscape Symbols Libraries

A comprehensive collection of **24,900+ symbols** organized into 58 SVG libraries for use with [Inkscape](https://inkscape.org/), the free and open-source vector graphics editor.

## Overview

This repository provides ready-to-use symbol libraries that integrate directly into Inkscape's Symbols panel. Instead of creating icons and symbols from scratch, designers can drag and drop from these pre-made collections to accelerate their workflow.

## Features

- **24,900+ symbols** across 58 library files
- **Multiple icon families**: Bootstrap, Tabler, Lucide, Heroicons, Phosphor, Remix, and more
- **Ready for Inkscape**: Drop into your symbols directory and start using immediately
- **Open formats**: All symbols in standard SVG format
- **Diverse categories**: UI elements, emojis, maps, brand logos, weather symbols, and more

## Installation

### Method 1: One-Click Installer (Recommended)

Download the repository and run the appropriate installer for your platform:

| Platform | Installer | How to Run |
|----------|-----------|------------|
| **Windows** | `install-windows.bat` | Double-click the file |
| **Windows** | `install-windows.ps1` | Right-click → "Run with PowerShell" |
| **Linux** | `install-linux.sh` | Run `./install-linux.sh` in terminal |
| **macOS** | `install-macos.sh` | Run `./install-macos.sh` in terminal |

The installer will automatically copy all symbol libraries to the correct Inkscape directory.

To uninstall on Windows, run `uninstall-windows.bat`.

### Method 2: Manual Installation

1. Download or clone this repository
2. Copy the `.svg` files to your Inkscape symbols directory:
   - **Linux**: `~/.config/inkscape/symbols/`
   - **macOS**: `~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/symbols/`
   - **Windows**: `%APPDATA%\inkscape\symbols\`
3. Restart Inkscape
4. Access symbols via **Object → Symbols** (or `Ctrl+Shift+Y`)

### Method 3: Clone Repository Directly

```bash
# Linux
git clone https://github.com/wpgaurav/Inkscape-Symbols-Libraries.git ~/.config/inkscape/symbols/

# macOS
git clone https://github.com/wpgaurav/Inkscape-Symbols-Libraries.git ~/Library/Application\ Support/org.inkscape.Inkscape/config/inkscape/symbols/
```

## Symbol Libraries

### Modern UI Icon Sets (NEW)

| Library | Symbols | Description |
|---------|---------|-------------|
| `tabler-icons-outline.svg` | 4,985 | Tabler Icons - outline style |
| `tabler-icons-filled.svg` | 1,001 | Tabler Icons - filled style |
| `simple-icons.svg` | 3,369 | Brand and company logos |
| `remix-icons.svg` | 3,188 | Remix Icon set - all categories |
| `bootstrap-icons.svg` | 2,078 | Bootstrap Icons |
| `lucide-icons.svg` | 1,666 | Lucide Icons (Feather fork) |
| `phosphor-icons.svg` | 1,512 | Phosphor Icons - regular |
| `phosphor-icons-fill.svg` | 1,512 | Phosphor Icons - filled |
| `ionic.svg` | 515 | Ionicons (updated) |
| `octicons.svg` | 342 | GitHub Octicons (updated) |
| `heroicons-outline.svg` | 324 | Heroicons - outline style |
| `heroicons-solid.svg` | 324 | Heroicons - solid style |
| `feather-icons.svg` | 287 | Feather Icons |

### Material Design Icons (Google)

| Library | Description |
|---------|-------------|
| `action.svg` | Action icons (home, search, settings, etc.) |
| `alert.svg` | Alert and notification icons |
| `av.svg` | Audio/video controls (play, pause, volume, etc.) |
| `communication.svg` | Communication icons (call, message, email, etc.) |
| `content.svg` | Content icons (add, remove, copy, paste, etc.) |
| `device.svg` | Device icons (phone, laptop, battery, etc.) |
| `editor.svg` | Text editor icons (format, align, list, etc.) |
| `file.svg` | File operation icons |
| `hardware.svg` | Hardware icons (keyboard, mouse, printer, etc.) |
| `image.svg` | Image editing icons (crop, rotate, filter, etc.) |
| `maps.svg` | Map and location icons |
| `navigation.svg` | Navigation icons (arrows, menu, close, etc.) |
| `notification.svg` | Notification icons |
| `toggle.svg` | Toggle and switch icons |

### Classic Icon Fonts

| Library | Symbols | Description |
|---------|---------|-------------|
| `font-awesome.svg` | 519 | Font Awesome icon collection |
| `genericons.svg` | 146 | Genericons icon font |
| `dashicons-set.svg` | 238 | WordPress Dashicons |
| `taiga.svg` | 90 | Taiga project icons |

### Specialized Collections

| Library | Symbols | Description |
|---------|---------|-------------|
| `emojione.svg` | 1,624 | EmojiOne emoji collection |
| `weather-symbols.svg` | 13 | Weather condition symbols |
| `internet-symbols.svg` | 78 | Internet and web icons |
| `humble-ui.svg` | 33 | Humble UI elements |
| `InkscapeMainToolsSymbols.svg` | 21 | Inkscape tool icons |
| `StateFace.svg` | 52 | US state shapes |

### Suru Icons (Ubuntu)

| Library | Symbols | Description |
|---------|---------|-------------|
| `suru-icon-devices.svg` | 20 | Device icons |
| `suru-icons-actions.svg` | 164 | Action icons |
| `suru-icons-apps.svg` | 61 | Application icons |
| `suru-icons-mimetypes.svg` | 14 | File type icons |
| `suru-icons-status.svg` | 169 | Status indicators |

### SJJB Map Symbols

Perfect for cartography and OpenStreetMap projects:

| Library | Symbols | Description |
|---------|---------|-------------|
| `sjjb-accommodation.svg` | 28 | Hotels, hostels, camping |
| `sjjb-amenity.svg` | 54 | Public amenities |
| `sjjb-barrier.svg` | 24 | Barriers and gates |
| `sjjb-education.svg` | 18 | Schools and universities |
| `sjjb-food.svg` | 22 | Restaurants and food |
| `sjjb-health.svg` | 20 | Hospitals and pharmacies |
| `sjjb-landuse.svg` | 16 | Land use symbols |
| `sjjb-money.svg` | 10 | Banks and ATMs |
| `sjjb-poi.svg` | 42 | Points of interest |
| `sjjb-power.svg` | 20 | Power infrastructure |
| `sjjb-shopping.svg` | 88 | Shops and stores |
| `sjjb-sport.svg` | 56 | Sports facilities |
| `sjjb-tourist.svg` | 64 | Tourist attractions |
| `sjjb-transport.svg` | 88 | Transportation |
| `sjjb-water.svg` | 6 | Water features |
| `sjjb-worship.svg` | 40 | Places of worship |

## Usage in Inkscape

### Getting Started

1. **Open Inkscape** and create a new document or open an existing one
2. **Open the Symbols panel**: Go to **Object → Symbols** (or press `Ctrl+Shift+Y` / `Cmd+Shift+Y` on macOS)
3. **Select a library**: Use the dropdown menu at the top of the Symbols panel to choose a symbol library (e.g., "bootstrap-icons", "tabler-icons-outline")
4. **Browse symbols**: Scroll through the available symbols in the panel
5. **Add to canvas**: Click and drag any symbol onto your canvas

### Working with Symbols

#### Resizing Symbols
- Select the symbol and drag the corner handles to resize
- Hold `Ctrl` while resizing to maintain aspect ratio
- Use **Object → Transform** (`Shift+Ctrl+M`) for precise sizing

#### Changing Colors
- Symbols inherit the current fill/stroke colors by default
- To change colors: Select the symbol, then use the Fill & Stroke panel (`Shift+Ctrl+F`)
- Some symbols may need to be unlinked first (see below)

#### Converting to Editable Paths
To fully edit a symbol's paths:
1. Select the symbol on your canvas
2. Go to **Edit → Clone → Unlink Clone** (or press `Shift+Alt+D`)
3. Then go to **Object → Ungroup** (`Shift+Ctrl+G`) if needed
4. The symbol is now a regular path you can edit with the Node tool

#### Duplicating Symbols
- `Ctrl+D` - Duplicate in place
- `Ctrl+C` then `Ctrl+V` - Copy and paste
- `Alt+D` - Create a linked clone (changes to original affect all clones)

### Tips & Best Practices

- **Search for icons**: Use the search box in the Symbols panel to find specific icons by name
- **Symbol linking**: Symbols maintain a link to the library - updating the library file updates all instances in your documents
- **Performance**: For documents with many symbols, consider unlinking them to improve performance
- **Consistent sizing**: Most icon sets use 24x24 or 16x16 viewboxes - resize proportionally for consistency
- **Batch operations**: Select multiple symbols and apply transformations to all at once

### Keyboard Shortcuts

| Action | Windows/Linux | macOS |
|--------|---------------|-------|
| Open Symbols Panel | `Ctrl+Shift+Y` | `Cmd+Shift+Y` |
| Duplicate | `Ctrl+D` | `Cmd+D` |
| Unlink Clone | `Shift+Alt+D` | `Shift+Option+D` |
| Ungroup | `Shift+Ctrl+G` | `Shift+Cmd+G` |
| Fill & Stroke | `Shift+Ctrl+F` | `Shift+Cmd+F` |
| Transform | `Shift+Ctrl+M` | `Shift+Cmd+M` |

## Troubleshooting

### Symbols not appearing in Inkscape

1. **Restart Inkscape**: The symbols panel only loads libraries at startup
2. **Check the directory**: Ensure SVG files are in the correct location:
   - Linux: `~/.config/inkscape/symbols/`
   - macOS: `~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/symbols/`
   - Windows: `%APPDATA%\inkscape\symbols\`
3. **Create the folder**: If the `symbols` folder doesn't exist, create it manually
4. **Check file permissions**: Ensure the SVG files are readable

### Symbols appear but can't be colored

Some symbols have hardcoded colors. To change them:
1. Unlink the clone (`Shift+Alt+D`)
2. Ungroup if needed (`Shift+Ctrl+G`)
3. Select individual paths and change their fill/stroke

### Inkscape is slow with many symbols

- Large symbol libraries (like `emojione.svg`) may slow down the Symbols panel
- Consider removing libraries you don't use
- Unlink symbols after placing them to improve document performance

### "Library not found" in dropdown

- Ensure the SVG file has valid `<symbol>` elements
- Check that the file isn't corrupted (try opening it directly in Inkscape)

## License

This repository aggregates symbols from various open-source projects. Each symbol set retains its original license:

| Icon Set | License |
|----------|---------|
| Bootstrap Icons | MIT License |
| Tabler Icons | MIT License |
| Lucide Icons | ISC License |
| Heroicons | MIT License |
| Feather Icons | MIT License |
| Phosphor Icons | MIT License |
| Remix Icons | Apache 2.0 |
| Simple Icons | CC0 1.0 |
| Material Design Icons | Apache 2.0 |
| Font Awesome | SIL OFL 1.1 / MIT |
| Ionic Icons | MIT License |
| Octicons | MIT License |
| EmojiOne | CC BY 4.0 / MIT |
| SJJB Map Icons | CC0 Public Domain |
| Suru Icons | GPL-3.0 |
| Genericons | GPL-2.0 |
| Dashicons | GPL-2.0 |

Please refer to each original project for specific licensing terms and attribution requirements.

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

### Ways to Contribute

- Add new symbol libraries
- Fix issues with existing symbols
- Improve documentation
- Report bugs or suggest enhancements

## Credits

This collection was curated by [Gaurav Tiwari](https://github.com/wpgaurav).

Special thanks to all the original icon designers and projects that make their work available to the open-source community.

## Related Projects

- [Inkscape](https://inkscape.org/) - Free and open-source vector graphics editor
- [Bootstrap Icons](https://icons.getbootstrap.com/)
- [Tabler Icons](https://tabler.io/icons)
- [Lucide Icons](https://lucide.dev/)
- [Heroicons](https://heroicons.com/)
- [Feather Icons](https://feathericons.com/)
- [Phosphor Icons](https://phosphoricons.com/)
- [Remix Icons](https://remixicon.com/)
- [Simple Icons](https://simpleicons.org/)
- [Font Awesome](https://fontawesome.com/)
- [Octicons](https://primer.style/octicons/)
- [SJJB Map Icons](https://www.sjjb.co.uk/mapicons/)
