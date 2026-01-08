if status is-interactive
end

function import_zsh_aliases --description "Import zsh/bash aliases as fish abbreviations"
    for line in (rg 'alias \w' "$argv[1]")
        set -l parts (string split -m1 '=' "$line")
        set -l name (string trim $parts[1] | string replace 'alias ' '')
        
        set -l cmd (string trim "$parts[2]")
        set cmd (string trim -c "\"'" "$cmd")
        abbr -a $name "$cmd"
    end
end

fish_config theme choose Catppuccin-Macchiato
set -g fish_greeting
set -g fish_key_bindings fish_vi_key_bindings
set -eU fish_key_bindings

import_zsh_aliases ~/.config/shell/aliasrc.sh
if command -v pacman &>/dev/null
    import_zsh_aliases ~/.config/shell/arch.sh
end
abbr -a -p anywhere BH -- "--help | bat -plhelp"

pfetch
starship init fish | source
