export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="amuse"
zstyle ':omz:update' mode disabled  # disable automatic updates

plugins=(git compleat history colorize sudo pyvenv)

source $ZSH/oh-my-zsh.sh
export SHELL=/bin/zsh

source ~/.kube/completion.zsh
source ~/.kube/helm.completion

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS


# sshc -> SSH connection
# it make dir and mount a remote root to the dir
function shfs() {
  local USER=$1
  local HOST=$2
  local REMOTE_PATH=${3:=/}
  local LOCAL_PATH=${4:=/tmp/${HOST}}

  test -d ${LOCAL_PATH} || mkdir -p ${LOCAL_PATH}
  sshfs ${USER}@${HOST}:${REMOTE_PATH} ${LOCAL_PATH}
  if (( $? == 0 )); then
    echo "Mounted '${USER}@${HOST}:${REMOTE_PATH}' -> '${LOCAL_PATH}'"
  else
    return 1
  fi

  return 0
}

