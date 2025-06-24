# General settings

```
Shell: Powershell 7 - pwsh.exe
```
For PowerShell 7 add ``"commandline": "pwsh.exe -NoLogo"`` where source says Windows.Terminal.PowershellCore, to remove the version prompt when opening a new window.

```
Font: FiraCode NFM (https://www.nerdfonts.com/font-downloads, https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/FiraCode.zip)
Font size: 11
Cursor: vintage (height: 18)
```

Global settings:
```json
"rendering.graphicsAPI": "direct3d11",
"schemes": 
[
    {
        "background": "#101414",
        "black": "#282C34",
        "blue": "#61AFEF",
        "brightBlack": "#5A6374",
        "brightBlue": "#61AFEF",
        "brightCyan": "#56B6C2",
        "brightGreen": "#98C379",
        "brightPurple": "#C678DD",
        "brightRed": "#E06C75",
        "brightWhite": "#DCDFE4",
        "brightYellow": "#E5C07B",
        "cursorColor": "#FFFFFF",
        "cyan": "#56B6C2",
        "foreground": "#DCDFE4",
        "green": "#98C379",
        "name": "One Half Darker",
        "purple": "#C678DD",
        "red": "#E06C75",
        "selectionBackground": "#FFFFFF",
        "white": "#DCDFE4",
        "yellow": "#E5C07B"
    }
],
"themes": [],
"useAcrylicInTabRow": true
```

profiles->defaults:
```json
{
    "colorScheme": "One Half Darker",
    "font": 
    {
        "face": "FiraCode NFM"
    },
    "opacity": 65,
    "padding": "8",
    "useAcrylic": true
}
```
