#/bin/sh
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$UID"

export XDG_DATA_DIRS="$XDG_DATA_HOME/flatpak/exports/share:/usr/local/share:/usr/share"
PATH="$HOME/.local/bin:$PATH"

export TERMINAL="foot"
export EDITOR="nvim"
export BROWSER="zen-browser"
PATH="$XDG_DATA_HOME/bob/nvim-bin:$PATH"

export GNUPGHOME="$XDG_DATA_HOME/gnupg"

export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export QT_QPA_PLATFORMTHEME="qt5ct"

export NVM_DIR="$XDG_DATA_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"
PATH="$PATH:$PNPM_HOME"

export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$HOME/.local/bin"
export GHCUP_USE_XDG_DIRS=1
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"

export USERXSESSION="$XDG_CACHE_HOME/X11/xsession"
export USERXSESSIONRC="$XDG_CACHE_HOME/X11/xsessionrc"
export ALTUSERXSESSION="$XDG_CACHE_HOME/X11/Xsession"
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

export MESA_GLSL_CACHE_DIR="$XDG_CACHE_HOME/mesa"
export MESA_SHADER_CACHE_DIR="$XDG_CACHE_HOME/mesa_shader_cache"
export __GL_SHADER_DISK_CACHE=0
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/GLCache"
export LIBVA_DRIVER_NAME=nvidia
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
# export WLR_DRM_NO_ATOMIC=1
export GSK_RENDERER=ngl

export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export HISTFILE="$XDG_STATE_HOME/history"
export HISTSIZE=5000
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export RXVT_SOCKET="$XDG_RUNTIME_DIR/urxvtd"
export _Z_DATA="$XDG_DATA_HOME/z"
export PARALLEL_HOME="$XDG_CONFIG_HOME/parallel"
export W3M_DIR="$XDG_STATE_HOME/w3m"
export SCREENRC="$XDG_CONFIG_HOME/screen/screenrc"
export SCREENDIR="$XDG_RUNTIME_DIR/screen"
export SINGULARITY_CACHEDIR="$XDG_CACHE_HOME/singularity"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GLFW_IM_MODULE=ibus
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
mkdir -p "$XDG_DATA_HOME/wineprefixes"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"

export PAGER="bat -plman"
export MANPAGER="nvim +Man!"

export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$TERMINFO:/usr/share/terminfo"

export PATH
