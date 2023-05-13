```powershell
# Download https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/FiraCode.zip >> Install FiraCodeNerdFont-Medium.ttf

# Place the "PowerShell" folder in $env:USERPROFILE\Documents

# Get scoop + packages
irm get.scoop.sh | iex
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
scoop install neovim gcc

# Disable omp notice
oh-my-posh disable notice
```
