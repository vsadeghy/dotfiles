#!/bin/sh

print() {
    echo -e "\e[1;35m $1 \e[0m"
}

nolog() {
    $@ 2> >(grep -vi 'skipping' >&2) 1>/dev/null
}

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
cd $SCRIPT_DIR

SSH_KEY="$HOME/.ssh/id_ed25519"
if [ ! -f $SSH_KEY ]; then
    print "Generating SSH key"
    nolog ssh-keygen -t ed25519 -C "v.sadeghy@gmail.com" -f "$HOME/.ssh/id_ed25519" -N ""
fi

print "installing Packages"
nolog grep -v '^#' $SCRIPT_DIR/packages | xargs -a /dev/stdin -r sudo pacman -S --noconfirm --needed
if ! command -v yay >/dev/null; then
    print "installing yay"
    nolog git clone https://aur.archlinux.org/yay-bin.git
    cd yay
    nolog makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

print "Installing AUR Packages"
nolog grep -v '^#' $SCRIPT_DIR/packages-aur | xargs -a /dev/stdin -r yay -S --noconfirm --needed

if [ ! -d ~/.config/tmux ]; then
    print "Adding config files"
    stow --override=1 .
    if [ ! -d ~/.zen ]; then
        nohup zen-browser &
        sleep 1
        pkill zen
        ZEN_PROFILE="$(find ~/.zen -type d -name '*(release)*')"/chrome
        stow zen -t $ZEN_PROFILE
    fi
fi

if ! nolog gh auth status; then
    print "Adding Github and SSH key"
    print "Please log in to your GitHub account"
    nolog gh auth login -w -s admin:public_key || print "COULDN'T ADD GITHUB ACCOUNT" && exit 1
    nolog gh ssh-key add $SSH_KEY.pub
    nolog gh config set git_protocol ssh
    print ""
fi

if [ ! -d ~/.config/nvim ]; then
    print "nvim config not found. Cloning nvim..."
    nolog gh repo clone nvim ~/.config/nvim
fi

if [ ! -d ~/.config/tmux/plugins ]; then
    print "Tmux config not found. Cloning tmux..."
    mkdir -p ~/.config/tmux/plugins
    nolog gh repo clone tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    nolog ~/.config/tmux/plugins/tpm/bin/install_plugins
fi

if ! nolog id -u kanata; then
    print "Adding kanata"
    ! nolog getent group uinput && sudo groupadd uinput
    sudo useradd -MG input,uinput -s /bin/false -U kanata
    sudo mkdir -p /etc/udev/rules.d
    sudo echo 'KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' |
        nolog sudo tee /etc/udev/rules.d/50-kanata.rules
    sudo chown root:kanata /usr/bin/kanata
    sudo chmod 754 /usr/bin/kanata
    sudo cat $SCRIPT_DIR/kanata/kanata.service | nolog sudo tee /etc/systemd/system/kanata.service
    sudo udevadm control --reload-rules && sudo udevadm trigger
    sudo modprobe uinput
    sudo systemctl daemon-reload
    sudo systemctl enable kanata.service
    sudo systemctl start kanata.service
    nolog sudo systemctl status kanata.service
fi

print "Setup finished"
