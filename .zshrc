export ZSH=/home/sperantus/.oh-my-zsh

ZSH_THEME="cloud"

unsetopt AUTO_CD
plugins=(git mercurial z)

# User configuration

  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games:/home/sperantus/bin:/home/sperantus/java/jdk1.8.0_25/bin:/home/sperantus/code/arcanist/bin/"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

alias setxdebug="export XDEBUG_CONFIG='remote_enable=1 remote_mode=req remote_port=9000 remote_host=127.0.0.1 remote_connect_back=0'"
alias unsetxdebug="unset XDEBUG_CONFIG"


alias tassets="php app/console tracpoint:assets"
alias dbsetup="php app/console tracpoint:db:test:setup"

export ANDROID_HOME="/hdd/Android/Sdk"
export PATH="/home/sperantus/PhpStorm-10.0/bin:$PATH"

fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i

#[[ $TMUX = "" ]] && export TERM="xterm-256color"
export TERM="xterm-256color"

export VAGRANT_DOTFILE_PATH='/hdd/vagrant/'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
