# Created by newuser for 5.9

autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PROMPT="%B%F{yellow}%~%f%b "
# History in cache directory:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI"

alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ip="ip -color=auto"

alias \
	sdn="sudo shutdown -h now" \
    todo="nvim ~/notes/todo" \
    tmc="cd ~/code;tmux new -s dev -n code"

export EDITOR=nvim

export PATH=$PATH:~/.spoof-dpi/bin
export PATH=$PATH:~/.local/bin
