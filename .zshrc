HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep nomatch
bindkey -e

alias v="nvim"
alias :q="exit"
alias ls="ls --color=auto"
alias la="ls -lah --color=auto"
alias grep="grep --color=auto"

local newline=$'\n'
local parse_special='${newline}[$(date +"%I:%M %p")] ($(print -rD $PWD))${newline}$ '
export PS1="${parse_special}"
setopt promptsubst

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi
