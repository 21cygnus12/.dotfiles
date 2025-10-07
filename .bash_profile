# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Environment
export EDITOR=nvim
export VISUAL=nvim
export TERMINAL=foot
export BROWSER=qutebrowser

# Path
export PATH="$PATH:/home/zack/.local/bin"

# manpager
export MANPAGER="nvim +Man!"
export MANWIDTH=999
. "$HOME/.cargo/env"
