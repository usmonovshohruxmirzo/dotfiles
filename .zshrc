if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto
ENABLE_CORRECTION="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
  history
)

alias storage='source ~/storage.sh'
alias cls='clear'
alias bat='batcat'
alias f='fzf --preview "batcat --style=numbers --color=always {}"'

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export DOTNET_ROOT=$HOME/dotnet
export PATH=$HOME/dotnet:$PATH
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH=$PATH:/opt/nvim-linux-x86_64/bin

if command -v tmux &> /dev/null; then
  if [ -z "$TMUX" ]; then
    tmux attach -t main || tmux new -s main
  fi
fi
