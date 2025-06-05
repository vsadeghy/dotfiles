# Zinit plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit light jeffreytse/zsh-vi-mode
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit snippet OMZP::command-not-found
source /usr/share/doc/pkgfile/command-not-found.zsh

# starship
zinit ice as"command" from"gh-r"\
  atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
  atpull"%atclone" src"init.zsh"
zinit light starship/starship

source $ZDOTDIR/catppuccin_macchiato-zsh-syntax-highlighting.zsh
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION
zinit cdreplay -q

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt auto_cd

zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ':completion:*:git-checkout:*' sort false
zstyle ":fzf-tab:complete:cd:*" fzf-preview 'exa -1 --color=always --group-directories-first --icons $realpath'
zstyle ":fzf-tab:complete:nvim:*" fzf-preview 'exa -1 --color=always --group-directories-first --icons $realpath'

alias bathelp="bat -plain --language help"
alias -g -- -h="-h 2>&1 | bathelp"
alias -g -- --help="--help 2>&1 | bathelp"

alias pu="sudo pacman -Sy"
alias pU="sudo pacman -Syyu"
alias pi="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias yi="yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"
alias pr="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias c="z"
alias v="nvim"
alias cp="cp -r"
alias rm="rm -r"
alias mkdir="mkdir -p"
alias whichport="lsof -i"
alias ser="sudo systemctl"
alias ls="exa --group-directories-first"
alias la="ls -a"
alias l="la -lh --icons --git"
alias l.="l -1d .*"
alias -g ...="../.."
alias -g ....="../../.."
alias -g .....="../../../.."
alias -g ......="../../../../.."
[ -d ~/.local/scripts ] && source ~/.local/scripts/*

pfetch
eval "$(zoxide init zsh)"

function zvm_after_init() {
  autoload -z edit-command-line
  zle -N edit-command-line
  bindkey "^e" edit-command-line

  bindkey -s "^f" " yazi\n"
  bindkey -s "^g" " lazygit\n"
  bindkey -s "^o" " tmux-sessionizer\n"

  eval "$(fzf --zsh)"
}
