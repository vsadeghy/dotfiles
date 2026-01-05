if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting
fish_config theme choose Catppuccin-Macchiato
fish_vi_key_bindings

pfetch
starship init fish | source
