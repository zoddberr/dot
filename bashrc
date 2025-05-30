#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

alias sdn='sudo shutdown now'
alias sus='systemctl suspend'
alias gs='git status'
alias ff='fastfetch'
alias vi='vim'
alias todo='$EDITOR $XDG_DATA_HOME/todo'
alias z='zet'
alias n='nnn -c'

alias yt-dlp="yt-dlp --proxy socks5://0.0.0.0:1080"

alias vol='wpctl get-volume @DEFAULT_SINK@'
