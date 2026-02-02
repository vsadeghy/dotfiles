function import_zsh_aliases --description "Import zsh/bash aliases as fish abbreviations"
	for line in (rg 'alias \w' "$argv[1]")
		set -l parts (string split -m1 '=' "$line")
		set -l name (string trim $parts[1] | string replace 'alias ' '')
		set -l cmd (string trim "$parts[2]")
		set cmd (string trim -c "\"'" "$cmd")
		abbr $name "$cmd"
	end
end

source /usr/share/doc/pkgfile/command-not-found.fish

fish_config theme choose Catppuccin-Macchiato
set -g fish_greeting
set -g fish_key_bindings fish_vi_key_bindings
# set -eU fish_key_bindings

import_zsh_aliases ~/.config/shell/aliasrc.sh
if command -v pacman &>/dev/null
	import_zsh_aliases ~/.config/shell/arch.sh
end
abbr -p anywhere BH -- "--help | bat -plhelp"

function run
	command -qv $argv[1] && eval "$argv[1] $argv[2..-1]"
end
run pfetch
run fzf                 --fish | source
run zoxide   init --cmd=d fish | source
run starship init         fish | source

function b -a key cmd
	if [ "$fish_key_bindings" = "fish_vi_key_bindings" ]
		bind -Minsert $key $cmd
	else
		bind $key $cmd
	end
end

b "!!" "commandline -t \$history[1]"
b "!*" "commandline -t -- (string join ' ' (string split ' ' $history[1])[2..-1])"
b "!\$" "commandline -f history-token-search-backward"
b "ctrl-g" "lazygit"
