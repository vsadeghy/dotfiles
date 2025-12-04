# Zinit plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

bindkey -e
# zinit light jeffreytse/zsh-vi-mode
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
fpath=($ZDOTDIR/completions ${fpath})
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
zstyle ":completion:*:git-checkout:*" sort false
zstyle ":fzf-tab:*" fzf-flags --preview-window 'right:40%:wrap:border-left' --bind '?:toggle-preview'
zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'
zstyle ":fzf-tab:complete:pacman:argument-rest" fzf-preview 'pacman -Si $desc'
zstyle ":fzf-tab:complete:*:*" fzf-preview '
  if [[ -d $realpath ]]; then
    exa -1 --color=always --group-directories-first --icons "$realpath"
  elif [[ -f $realpath ]]; then
    bat --color=always --style=numbers "$realpath"
  fi
'

for f in ~/.config/shell/*; do
  source $f
done

pfetch
eval "$(zoxide init zsh)"

# function zvm_after_init() {
  autoload -z edit-command-line
  zle -N edit-command-line
  bindkey "^e" edit-command-line

  bindkey -s "^n" " yazi\n"
  bindkey -s "^g" " lazygit\n"
  bindkey -s "^o" " siscon\n"

  eval "$(fzf --zsh)"
# }
