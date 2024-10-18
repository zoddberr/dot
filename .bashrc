#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "(%s)")'; PS1='\[\e[90m\]╔ \[\e[93m\]\u\[\e[90m\]@\[\e[36m\]\h\[\e[0m\]:\[\e[35m\]\W\[\e[91m\]${PS1_CMD1}\n\[\e[90m\]╚ \[\e[36m\]\$\[\e[0m\] '

export EDITOR=vim
export BROWSER=firefox
export TERMINAL=st

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export PATH=$PATH:~/.local/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias sdn='sudo shutdown now'
alias gs='git status'
alias ff='fastfetch'
alias vi='vim'
alias todo='$EDITOR $XDG_DATA_HOME/todo'
alias z='zet'

alias wbr='brightnessctl set 45%'
alias ibr='brightnessctl set 10%'

source ~/.git-prompt.sh