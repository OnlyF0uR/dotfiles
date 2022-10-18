```powershell
# Make sure the user_profile will be processed (Don't do this if you already have the PowerShell_profile), also you might need to create the directories manually.
echo ". $env:USERPROFILE\.config\powershell\user_profile.ps1" > $env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

# Install font required by oh-my-posh (Just double click it and install)
iwr -useb  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -OutFile "MesloLGS NF Regular.ttf"

# Get scoop
irm get.scoop.sh | iex

# Download & Install packages
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
scoop install neovim gcc
```
