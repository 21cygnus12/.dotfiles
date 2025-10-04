# default apps
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="foot"
export BROWSER="firefox"

# default folders
export XDG_CONFIG_HOME="$HOME/.config"

# PATH
export PATH="$PATH:/home/zack/.local/bin:/home/zack/.cargo/bin"

# zsh config
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# zoxide data
export _ZO_DATA_DIR="$XDG_CONFIG_HOME/zoxide"

# manpager
export MANPAGER="nvim +Man!"
export MANWIDTH=999

# Remove escape delay for vi mode
export KEYTIMEOUT=1
. "$HOME/.cargo/env"
