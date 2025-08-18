#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "(%s)")'; PS1='[\[\e[93m\]\u\[\e[0m\]@\[\e[95m\]\h\[\e[0m\] \[\e[92m\]\W\[\e[0m\]]\[\e[96;1m\]${PS1_CMD1}\[\e[0m\]\$ '

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_STATESEPARATOR=""

# vi mode
set -o vi

export EDITOR=vim
export BROWSER=firefox
export TERMINAL=st
export READER=zathura

shopt -s histappend
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=10000

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export PATH=$PATH:~/.local/bin

export MPD_HOST=localhost
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='v:preview-tabbed'
export NNN_OPENER="$XDG_CONFIG_HOME/nnn/plugins/nuke"

# java applications white screen fix
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cal='cal -m'
alias n='nnn -c'

alias sdn='sudo shutdown now'
alias sus='systemctl suspend'
alias gs='git status'
alias ff='fastfetch'
alias vi='vim'
alias todo='$EDITOR $XDG_DATA_HOME/todo'
alias z='zet'

. ~/.git-prompt.sh   # dot path/to/this-file
