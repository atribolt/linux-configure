export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="amuse"
zstyle ':omz:update' mode disabled

plugins=(git compleat history colorize sudo pyvenv)

source $ZSH/oh-my-zsh.sh
export SHELL=/bin/zsh

source ~/.kube/completion.zsh
