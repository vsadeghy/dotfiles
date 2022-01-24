# If not running interactively, don't do anything
[[ $- != *i* ]] && return

typeset -U PATH path
path=("$HOME/.local/bin" "$XDG_DATA_HOME/yarn/bin" "$path[@]")
export PATH

COMPLETION_WAITING_DOTS="true"
# (man zshoptions)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
zle_highlight=('paste:none')

autoload -U colors && colors

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
    # zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
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

export ZSH_COMPDUMP=$HOME/.cache/zsh/zcompdump
setopt AUTO_CD
setopt GLOB_DOTS
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_TO_HOME
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY

#PS1='[\u@\h \W]\$ '

[[ -f ~/.config/aliasrc ]] && . ~/.config/aliasrc
[[ -f ~/.config/personal-aliasrc ]] && . ~/.config/personal-aliasrc
alias history="history 1"
alias h="history 1"
alias hs="history 1 | rg"

. /usr/share/nvm/init-nvm.sh
. /usr/share/goto.sh
# eval "$(lua $HOME/repos/z.lua/z.lua --init zsh enhanced)"

eval "$(starship init zsh)"

#neofetch
