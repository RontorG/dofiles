#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Nice colors :)
YELLOW="\[$(tput setaf 3)\]"
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

PS1="${GREEN}[${YELLOW}\u${GREEN}@\h${YELLOW} \W${GREEN}]${RESET}\$ "

set -o vi


# Aliases
alias ls='ls --color=auto'
alias cp='cp -i'
alias mv='mv -i'
