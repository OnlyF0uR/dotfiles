```powershell
# Create $env:USERPROFILE\Documents\PowerShell and install the file from this repository

# Download https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/FiraCode.zip >> install FiraCodeNerdFont-Medium.ttf

# Get scoop
irm get.scoop.sh | iex

# Download & Install packages
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
scoop install neovim gcc

# Open the powershell shell with oh-my-posh
pwsh
# Disable notice
oh-my-posh disable notice
```
