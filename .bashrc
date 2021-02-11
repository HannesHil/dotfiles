# If not running interactively, don't do anything
[[ $- != *i* ]] && return


[[ -a $HOME/.aliases ]] && source $HOME/.aliases
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
