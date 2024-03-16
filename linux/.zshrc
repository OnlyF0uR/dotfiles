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

export MODULAR_HOME="/home/four/.modular"
export PATH="/home/four/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

export PATH="$PATH:/home/four/.foundry/bin"

# fnm
export PATH="/home/four/.local/share/fnm:$PATH"
eval "`fnm env`"

# Go
export PATH=$PATH:/usr/local/go/bin
. "$HOME/.cargo/env"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
