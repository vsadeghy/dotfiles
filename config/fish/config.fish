set -g fish_greeting
set -g fish_key_bindings fish_default_key_bindings
set -U nvm_default_version latest
fish_config theme choose Catppuccin-Macchiato
source /usr/share/doc/pkgfile/command-not-found.fish 2>/dev/null

import_aliases ~/.config/shell/aliasrc.sh
import_aliases ~/.config/shell/arch.sh pacman
import_aliases ~/.config/shell/ubuntu.sh apt
import_aliases ~/.lconfig/aliases.sh

vbind "!!" "commandline -t \$history[1]"
vbind "!*" "commandline -t -- (string join ' ' (string split ' ' $history[1])[2..-1])"
vbind "!\$" "commandline -f history-token-search-backward"
vbind "ctrl-g" "lazygit"

try pfetch
try fzf                 --fish | source
try zoxide   init --cmd=d fish | source
try starship init         fish | source
