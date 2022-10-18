# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Fix WSL startup directory
if grep -qi microsoft /proc/version; then
	cd ~
fi 

# User configuration
export EDITOR='nvim'

# ============ Path ============
export PATH=$PATH:/usr/local/go/bin # Go
export PATH=$PATH:$HOME/.go/bin # Go module installations
export PATH=$PATH:$HOME/.local/bin # Local binaries
export PATH=$PATH:$HOME/.config/composer/vendor/bin # PHP-composer
export PATH=$PATH:$HOME/.cargo/bin # Rust

export GOPATH=$HOME/.go

# Stuff related to sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
