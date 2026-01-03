# Contributing to Inkscape Symbols Libraries

Thank you for your interest in contributing! This document provides guidelines for contributing to this symbol library collection.

## Ways to Contribute

### Adding New Symbol Libraries

1. **Fork the repository** and create a new branch for your addition
2. **Prepare your SVG file**:
   - Ensure symbols are properly defined with `<symbol>` elements
   - Each symbol should have a unique `id` attribute
   - Include a `viewBox` attribute for proper scaling
   - Optimize the SVG (remove unnecessary metadata, comments, etc.)
3. **Name the file** descriptively (e.g., `category-name.svg`)
4. **Submit a pull request** with:
   - Description of the symbol set
   - Number of symbols included
   - Original source and license information

### SVG Format Requirements

Symbol libraries should follow this structure:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg">
  <symbol id="symbol-name-1" viewBox="0 0 24 24">
    <!-- Symbol paths here -->
  </symbol>
  <symbol id="symbol-name-2" viewBox="0 0 24 24">
    <!-- Symbol paths here -->
  </symbol>
</svg>
```

### Fixing Issues

- **Broken symbols**: If you find symbols that don't render correctly, please fix and submit a PR
- **Typos**: Fix any typos in filenames or documentation
- **Optimization**: Help optimize large SVG files for better performance

### Improving Documentation

- Enhance the README with better descriptions
- Add usage examples or tutorials
- Improve installation instructions for different platforms

## Pull Request Process

1. **Create a descriptive PR title** (e.g., "Add Bootstrap Icons library" or "Fix broken symbols in font-awesome.svg")
2. **Describe your changes** in the PR description
3. **Include license information** for any new symbol sets
4. **Test in Inkscape** to ensure symbols load and display correctly

## License Considerations

When adding new symbol libraries:

- Only add symbols that are under open-source licenses
- Clearly document the original license in your PR
- Ensure the license allows redistribution
- Common acceptable licenses:
  - MIT
  - Apache 2.0
  - GPL (v2 or v3)
  - Creative Commons (CC0, CC BY, CC BY-SA)
  - SIL Open Font License

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Help maintain a welcoming community

## Questions?

If you have questions about contributing, please open an issue on GitHub.

---

Thank you for helping improve Inkscape Symbols Libraries!
