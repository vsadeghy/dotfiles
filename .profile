#/bin/sh
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$UID"


# https://wiki.archlinux.org/title/GnuPG#gpg-agent
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
alias gpg='gpg --homedir "$XDG_DATA_HOME/gnupg"'
alias gpg2='gpg2 --homedir "$XDG_DATA_HOME/gnupg"'

export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"

export USERXSESSION="$XDG_CACHE_HOME/X11/xsession"
export USERXSESSIONRC="$XDG_CACHE_HOME/X11/xsessionrc"
export ALTUSERXSESSION="$XDG_CACHE_HOME/X11/Xsession"
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export HISTFILE="$XDG_STATE_HOME/history"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export RXVT_SOCKET="$XDG_RUNTIME_DIR/urxvtd"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
alias wget=wget --hst-file="$XDG_DATA_HOME/wget-hst"
alias xbindkeys='xbindkeys -f "$XDG_CONFIG_HOME/xbindkeys/config"'
export _Z_DATA="$XDG_DATA_HOME/z"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GLFW_IM_MODULE=ibus

export PATH="${PATH}:$HOME/bin"

export TERMINAL="kitty"
export EDITOR="nvim"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
