if command -v pacman &>/dev/null; then
    alias in="sudo pacman --needed -S"
    alias up="sudo pacman --needed -Sy"
    alias Up="sudo pacman --needed -Syu"
    alias un="sudo pacman -Rn"
    alias In="yay --needed -S"
    alias mirrors="sudo reflector @/etc/xdg/reflector/reflector.conf"
fi

