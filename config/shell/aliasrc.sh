# everyday
alias -g ...="../.."
alias -g ....="../../.."
alias -g .....="../../../.."
alias -g ......="../../../../.."

alias v="nvim"
alias cp="cp -r"
alias rm="rm -r"
alias ls="eza --icons --group-directories-first"
alias l="ls -1"
alias lsa="ls -a"
alias la="ls -1a"
alias ll="l -l"
alias L="la -l"
alias l.="l -d .*"
alias t="tmux a || tmux"
alias whichport="lsof -i"
alias ser="sudo systemctl"
alias px="ps aux | rg"
alias b="bat"
alias -g BH="--help | bat -plain --language help"

# arch based
if [ -f /etc/arch-release ]; then
    alias pi="sudo pacman --needed -S"
    alias pu="sudo pacman --needed -Sy"
    alias pU="sudo pacman --needed -Syu"
    alias pr="sudo pacman -Rn"
    alias yi="yay --needed -S"
fi

# XDG_* environment variables
alias gpg="gpg --homedir '$XDG_DATA_HOME/gnupg'"
alias gpg2='gpg2 --homedir "$XDG_DATA_HOME/gnupg"'
alias nvidia-settings="nvidia-settings --config='$XDG_CONFIG_HOME/nvidia/nvidia-settings.conf'"
alias wget="wget --hsts-file='$XDG_DATA_HOME/wget-hst'"
alias xbindkeys="xbindkeys -f '$XDG_CONFIG_HOME/xbindkeys/config'"
