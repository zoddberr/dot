#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "(%s)")'; PS1='\[\e[90m\]╔ \[\e[93m\]\u\[\e[90m\]@\[\e[36m\]\h\[\e[0m\]:\[\e[35m\]\W\[\e[91m\]${PS1_CMD1}\n\[\e[90m\]╚ \[\e[36m\]\$\[\e[0m\] '

export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim
export PATH=$PATH:~/.local/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias sdn='sudo shutdown now'
alias bins='cd ~/.local/bin'
alias gs='git status'

alias todo='$EDITOR ~/.todo'
alias bm='$EDITOR ~/.bookmarks'
alias z='cd ~/zet/data/ && zet'

source ~/.git-prompt.sh

