#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias n='nvim .'
PS1='\[\e[38;2;163;190;140m\]$ \[\e[0m\]'

# Created by `pipx` on 2026-08-16 20:13:30
export PATH="$PATH:/home/kopihue/.local/bin"
