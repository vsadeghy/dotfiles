function fish_greeting
	try pfetch
end
set -g fish_key_bindings fish_default_key_bindings
set -U nvm_default_version latest
fish_config theme choose Catppuccin-Macchiato

import_aliases ~/.config/shell/aliasrc.sh
import_aliases ~/.config/shell/arch.sh pacman
import_aliases ~/.config/shell/ubuntu.sh apt

vbind "!!" 'commandline -t \$history[1]'
vbind "!*" "commandline -t -- (string join ' ' (string split ' ' $history[1])[2..-1])"
vbind '!$' "commandline -f history-token-search-backward"

try fzf                 --fish | source
try zoxide   init --cmd=d fish | source
try starship init         fish | source

source ~/.lconfig/config.fish 2>/dev/null
