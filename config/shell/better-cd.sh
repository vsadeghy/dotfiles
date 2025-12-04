d() {
    dir="$1"
    echo "$dir" | grep -Eq "/" && cd="cd" || cd="z"

    cderr=$($cd "$dir" 2>&1)
    if [ $? -eq 0 ]; then
        $cd $dir
        return
    fi
    if [[ "$cderr" != *"no such file or directory"* ]] && [[ "$cderr" != *"no match found"* ]]; then
        echo cderr: "$cderr"
        return 1
    fi
    echo "Directory '$dir' does not exist. Create directory it? (y/N)"
    if ! read -qs; then
        echo "Aborted."
        return 1
    fi

    mkdirerr=$(mkdir -p "$dir" 2>&1)
    if [ $? -eq 0 ]; then
        echo "cd $dir"
        cd "$dir"
        return
    fi
    if [[ "$mkdirerr" != *"Permission denied"* ]]; then
        echo "$mkdirerr"
        return 1
    fi
    echo "Permission denied. Try with sudo? (y/N)"
    if ! read -qs; then
        echo "Aborted."
        return 1
    fi
    echo
    sudo mkdir "$dir" && sudo cd "$dir"
}
