#!/bin/sh
set -eou pipefail

print() {
    echo -e "\e[1;35m $1 \e[0m"
}

nolog() {
    $@ 2> >(grep -vi 'skipping' >&2) 1>/dev/null
}

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
cd $SCRIPT_DIR

install() {
    yay -S --noconfirm --needed "$@"
}

# Install packages from a file
install_from_file() {
    file="$SCRIPT_DIR/packages/$1"
    grep -Ev '^(#|$)' "$file" | yay -S --noconfirm --needed -
}

# Install gum if not already installed
install_gum() {
    if ! command -v gum >/dev/null; then
        print "Installing gum..."
        install gum
    fi
}

stow_setup() {
    install stow
    olddots="
        $HOME/.cache
        $HOME/.bash_history
        $HOME/.bash_logout
        $HOME/.bash_profile
        $HOME/.Xauthority
        $HOME/.config/i3
    "
    for olddot in $olddots; do
        [ -e $olddot ] && [ ! -L $olddot ] && echo rm -rf $olddot
    done
    cd ./config
    stow -R .
    stow -R home -t $HOME
    source $HOME/.profile
}

install_packages() {
    print "Installing Packages"
    if ! command -v yay >/dev/null; then
        print "Installing yay"
        sudo pacman -S --noconfirm --needed base-devel
        git clone https://aur.archlinux.org/yay-bin.git yay
        cd yay
        makepkg -si --noconfirm
        cd ..
        rm -rf yay
    fi

    print "Installing common packages"
    install_from_file "cli/common.txt"
    if gum confirm "Install development packages?"; then
        install_from_file "cli/dev.txt"
    fi

    if gum confirm "Install GUI packages?"; then
        install_from_file "gui/common.txt"
        install_from_file "gui/apps.txt"
        for wm in $(gum choose --no-limit "i3" "hyprland" "niri"); do
            case $wm in
                "i3")
                    install_from_file "gui/x11.txt"
                    install i3-wm i3blocks i3lock i3status i3-swallow-git
                    ;;
                "hyprland")
                    install_from_file "gui/wayland.txt"
                    install hyprland hyprpaper hyprcursor hyprutils hyprwayland-scanner hyprpicker hyprland-qt-support hyprland-qtutils hyprpolkitagent xdg-desktop-portal-hyprland hyprprop hyprlang hyprshot
                    ;;
                "niri")
                    install_from_file "gui/wayland.txt"
                    install niri
                    ;;
            esac
        done
    fi
}

ssh_setup() {
    SSH_KEY="$HOME/.ssh/id_ed25519"
    if [ ! -f $SSH_KEY ]; then
        print "Generating SSH key"
        comment=$(gum input --placeholder "Enter your SSH key comment")
        ssh-keygen -t ed25519 -C "$comment" -f $SSH_KEY -N ""
    fi
}

nvim_setup() {
    install nvim
    if [ ! -d ~/.config/nvim ]; then
        print "nvim config not found. Cloning nvim..."
        git clone https://github.com/vsadeghy/nvim ~/.config/nvim
    fi
}

tmux_setup() {
    install_plugins=~/.config/tmux/plugins/tpm/bin/install_plugins
    if [ ! -e $install_plugins ]; then
        print "Tmux config not found. Cloning tmux..."
        mkdir -p ~/.config/tmux/plugins
        git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    fi
    $install_plugins
}

kanata_setup() {
    if ! id -u kanata; then
        print "Adding kanata"
        yay -S --noconfirm --needed kanata-bin
        ! getent group uinput && sudo groupadd --system uinput
        sudo useradd -MG input,uinput -s /bin/false -U kanata
        sudo mkdir -p /etc/udev/rules.d
        sudo echo 'KERNEL=="uinput", SUBSYSTEM=="misc", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' |
            sudo tee /etc/udev/rules.d/50-kanata.rules
        sudo chown root:kanata /usr/bin/kanata
        sudo chmod 754 /usr/bin/kanata
        sudo cat $SCRIPT_DIR/config/kanata/kanata.service | sudo tee /etc/systemd/system/kanata.service
        sudo udevadm control --reload-rules && sudo udevadm trigger
        sudo modprobe uinput
        sudo systemctl daemon-reload
        sudo systemctl enable kanata.service
        sudo systemctl start kanata.service
        sudo systemctl status kanata.service
    fi
}

zen_colorscheme() {
    if [ ! -d ~/.zen ]; then
        nohup zen-browser &
        sleep 1 && pkill zen && sleep 1
    fi
    ZEN_PROFILE=$(fd 'release' ~/.zen)
    echo "zen profile: $ZEN_PROFILE"
    if [ ! -z $ZEN_PROFILE ]; then
        stow zen -t $ZEN_PROFILE
    fi
}

gui_setup() {
    if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" == 1 ]; then
        return
    fi
    zen_colorscheme
}

if ! sudo true 2>/dev/null; then
    print "sudo is required to run this script"
    exit 1
fi

install_gum
gum confirm "Install packages?" && install_packages

SETUP_OPTIONS=$(gum filter --no-limit --selected="*" "dotfiles" "ssh" "nvim" "tmux" "kanata")
for option in $SETUP_OPTIONS; do
    case $option in
        "dotfiles") stow_setup;;
        "ssh") ssh_setup;;
        "nvim") nvim_setup;;
        "tmux") tmux_setup;;
        "kanata") kanata_setup;;
    esac
done

# gui_setup

print "Setup finished"
