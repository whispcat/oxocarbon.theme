# Oxocarbon for Vivaldi

Dark and light themes for the [Vivaldi](https://vivaldi.com) browser.

## Building the theme files

Vivaldi imports a theme as a zip file that contains the theme JSON, named
`settings.json`.

Run the build script from this directory to create `oxocarbon_dark.zip` and
`oxocarbon_light.zip`:

```bash
cd extras/vivaldi
./build
```

To build one by hand, copy a theme file such as `oxocarbon_light.json` into an
empty directory, rename it to `settings.json`, and zip it:

```bash
zip oxocarbon_light.zip settings.json
```

## Installation

In Vivaldi, open Settings > Themes, click "Import Themes", and select a zip file.
The theme then appears in your theme list; click it to apply it.
