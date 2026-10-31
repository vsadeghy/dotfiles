set -l pro_file $__fish_cache_dir/profile.fish

if test -f $pro_file && ! test ~/.profile -nt $pro_file
    source $pro_file
    return
end

env -i HOME=$HOME bash --noprofile --norc -c '
    export XDG_CONFIG_HOME="$HOME/.config"
    export XDG_CACHE_HOME="$HOME/.local/cache"
    export XDG_DATA_HOME="$HOME/.local/share"
    export XDG_STATE_HOME="$HOME/.local/state"
    export XDG_RUNTIME_DIR="/run/user/$UID"
    test -f /etc/profile && . /etc/profile >/dev/null 2>&1
    test -f ~/.profile && . ~/.profile >/dev/null 2>&1
    env
' | while read -l line
    set -l kv (string split -m1 '=' -- $line)
    set -l k $kv[1]
    set -l v $kv[2]

    if test -z "$k" || string match -qr '^[0-9]' $k || test "$k" = "_" -o "$k" = "SHLVL" -o "$k" = "PWD"
        continue
    end

    set -l safe_val (string replace -a '\\' '\\\\' -- $v | string replace -a '"' '\\"')

    switch $k
        case PATH CDPATH MANPATH XDG_DATA_DIRS XDG_CONFIG_DIRS TERMINFO_DIRS
            echo "set -gx --path $k \"$safe_val\"" >> $pro_file
        case '*'
            echo "set -gx $k \"$safe_val\"" >> $pro_file
    end
end

source $pro_file
