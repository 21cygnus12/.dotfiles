# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Prompt 
PS1='\w\n> '

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
. "$HOME/.cargo/env"
