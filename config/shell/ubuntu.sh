if command -v apt &>/dev/null; then
    alias in="sudo apt install"
    alias up="sudo apt update"
    alias Up="sudo apt update && sudo apt upgrade"
    alias un="sudo apt remove"
    alias In="sudo nala install"
fi

