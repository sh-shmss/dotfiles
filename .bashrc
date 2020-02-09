# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias grep='grep --color=auto'
alias ls='ls --color=auto'

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

PS1="\[$(tput bold)\]";
PS1+="\[$(tput setaf 002)\]\u";
PS1+="\[$(tput sgr0)\]";
PS1+="\[$(tput bold)\]";
PS1+="\[@$(tput setaf 004)\]\h";
PS1+="\[$(tput sgr0)\]";
PS1+="\[ \]\w";
PS1+="\[$(tput setaf 002)\]"
PS1+="$ \[$(tput sgr0)\]";
export PS1;


