status is-interactive || exit

function __nvm_auto_use --on-event fish_prompt --description "Run 'nvm use' when the nearest .nvmrc/.node-version changes"
    set --local nvmrc_path

    for file in .nvmrc .node-version
        set --local dir $PWD
        while test -n "$dir"
            if test -e "$dir/$file"
                set nvmrc_path "$dir/$file"
                break
            end
            set dir (string replace --regex -- '/[^/]*$' "" $dir)
        end
        test -n "$nvmrc_path" && break
    end

    set --local key none
    if test -n "$nvmrc_path"
        read --local nvmrc_version <$nvmrc_path
        set key "$nvmrc_path:$nvmrc_version"
    end

    if test "$key" != "$__nvm_auto_use_key"
        set --global __nvm_auto_use_key $key

        if test -n "$nvmrc_path"
            nvm use --silent
        else if set --query nvm_default_version
            nvm use --silent default
        end

        if test -n "$nvmrc_path" && test "$nvm_current_version" != "$nvm_default_version"
            printf "Using Node %s via .nvmrc (default: %s)\n" $nvm_current_version $nvm_default_version
        end
    end
end
