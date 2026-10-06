# Oxocarbon for Gemini CLI

Themes for the [Gemini CLI](https://github.com/google-gemini/gemini-cli):
`oxocarbon_dark.json` (Oxocarbon Dark) and `oxocarbon_light.json` (Oxocarbon Light).

## Installation

Open your Gemini CLI `settings.json`. It is at `~/.gemini/settings.json` on Linux
and macOS, and `%USERPROFILE%\.gemini\settings.json` on Windows.

Set `ui.theme` to the absolute path of the theme file:

```json
{
  "ui": {
    "theme": "/absolute/path/to/oxocarbon_dark.json"
  }
}
```

Or paste the file's contents into `ui.customThemes` and select it by name:

```json
{
  "ui": {
    "customThemes": {
      "Oxocarbon Dark": {
        "name": "Oxocarbon Dark",
        "type": "custom",
        ...
      }
    },
    "theme": "Oxocarbon Dark"
  }
}
```
