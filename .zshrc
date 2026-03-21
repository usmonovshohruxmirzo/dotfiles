# Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH + Oh My Zsh Configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

zstyle ':omz:update' mode auto

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
  history
)

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# .NET Development Environment
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$DOTNET_ROOT:$PATH
export PATH=$PATH:$HOME/.dotnet/tools

export NUGET_PACKAGES=$HOME/.nuget/packages
export NUGET_HTTP_CACHE_PATH=$HOME/.local/share/NuGet/http-cache

ulimit -n 8192

# Editor Tools
export PATH=$PATH:/opt/nvim-linux-x86_64/bin
export EDITOR=nvim
export VISUAL=nvim

# File Navigation + Terminal Utilities
unalias ls 2>/dev/null

alias ls='eza --icons'
alias ll='eza -lah --icons'
alias la='eza -a --icons'
alias lt='eza --tree --icons'
alias lg='eza -lah --git --icons'

alias cd='z'

alias storage='cd /mnt/Storage || { echo "Directory not found"; }'
alias books='cd /mnt/Storage/Books || { echo "Directory not found"; }'

alias cls='clear'
alias bat='batcat'

alias f='fzf --preview "batcat --style=numbers --color=always {}"'

# System Control
alias t='tmux'
alias p='poweroff'
alias qa='exit'
alias res='sudo reboot'
alias top='bpytop'
alias lock='loginctl lock-session'
alias desk='cd ~/Desktop'
alias ping='gping'
alias ip='hostname -I'
alias sys='fastfetch'

# Cleanup Shortcuts
alias ct='rm -rf ~/.local/share/Trash/*'
alias cdl='rm -rf ~/Downloads/*'

# .NET Shortcuts
alias di='~/dotnet-info.sh'
alias dnr='dotnet run'
alias dnb='dotnet build'
alias dnt='dotnet test'
alias dnf='dotnet format'
alias dnrst='dotnet restore'
alias dnc='dotnet clean'
alias dnew='dotnet new'
alias dnw='dotnet watch'
alias dncrb='dnc && dnrst && dnb'

alias efadd='dotnet ef migrations add'
alias efremove='dotnet ef migrations remove'
alias efupdate='dotnet ef database update'
alias eflist='dotnet ef migrations list'

# Python Shortcuts
alias py='python3'

# JavaScript Shortcuts
alias nrun='npm run dev'
alias ntest='npm run test'
alias nbuild='npm run build'
alias nformat='npm run format'
alias nlint='npm run lint'

# pgcli
alias pg='pgcli'

# ZSH
alias uzsh='source ~/.zshrc'

# Productivity Tools
eval "$(zoxide init zsh)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"


[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
