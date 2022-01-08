# export ZSH=/usr/share/oh-my-zsh/

# /home/vahid/.zshenv
#ZSH_THEME="lambda"
COMPLETION_WAITING_DOTS="true"
# (man zshoptions)

# plugins=(git)
# source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
setopt GLOB_DOTS
zle_highlight=('paste:none')

autoload -U colors && colors
setopt autocd

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -v
export KEYTIMEOUT=1
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey '^r' history-incremental-search-backward

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

function expand-alias() {
	zle _expand_alias
	zle self-insert
}
zle -N expand-alias
bindkey -M main '^x' expand-alias

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

bindkey -s '^o' 'ranger^M'
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -v '^?' backward-delete-char
bindkey -v '^[[3~' delete-char
bindkey '^k' up-line-or-beginning-search # Up
bindkey '^j' down-line-or-beginning-search # Down
autoload -U select-word-style
select-word-style bash
bindkey '^H' backward-delete-word
bindkey '^[[3;5~' delete-word
bindkey '^ ' autosuggest-accept

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE=$HOME/.local/share/zsh/history
export ZSH_COMPDUMP=$HOME/.cache/zsh/zcompdump
HISTSIZE=1000000
SAVEHIST=1000000
# export HISTCONTROL=ignoreboth:erasedups
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS

export ANDROID="/run/user/1000/gvfs/mtp:host=Xiaomi_Redmi_Note_9_05c3c8af0405/Internal shared storage/"

#PS1='[\u@\h \W]\$ '

# shopt
#shopt -s autocd # change to named directory
#shopt -s cdspell # autocorrects cd misspellings
#shopt -s cmdhist # save multi-line commands in history as single line
#shopt -s dotglob
#shopt -s histappend # do not overwrite history
# shopt -s expand_aliases # expand aliases

[[ -f ~/.config/aliasrc ]] && . ~/.config/aliasrc
[[ -f ~/.config/personal-aliasrc ]] && . ~/.config/personal-aliasrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# place this after nvm initialization!
#autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
#add-zsh-hook chpwd load-nvmrc
# load-nvmrc


eval "$(starship init zsh)"
eval "$(lua $HOME/repos/z.lua/z.lua --init zsh enhanced)"
#neofetch
