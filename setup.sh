#!/bin/sh

print() {
    echo -e "\033[1;37;42m $1 \033[0m"
}
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

SSH_KEY="$HOME/.ssh/id_ed25519"
if [ ! -f $SSH_KEY ]; then
    print "generating SSH key"
    ssh-keygen -t ed25519 -C "v.sadeghy@gmail.com" -f "$HOME/.ssh/id_ed25519" -N "" 1>/dev/null
fi

print "installing packages"
grep -v '^#' $SCRIPT_DIR/packages | xargs -a /dev/stdin -r sudo pacman -S --noconfirm --needed 1>/dev/null

if ! command -v yay >/dev/null; then
    print "installing yay"
    git clone https://aur.archlinux.org/yay-bin.git 1>/dev/null
    cd yay
    makepkg -si --noconfirm 1>/dev/null
    cd ..
    rm -rf yay
fi

print "installing AUR packages"
grep -v '^#' $SCRIPT_DIR/packages-aur | xargs -a /dev/stdin -r yay -S --noconfirm --needed 1>/dev/null

if ! gh auth status >/dev/null 2>&1; then
    print "Please log in to your GitHub Account"
    gh auth login -w -s admin:public_key 1>/dev/null || exit 1
    gh ssh-key add $SSH_KEY.pub 1>/dev/null
    gh config set git_protocol ssh 1>/dev/null
fi

if [ ! -d ~/.config/nvim ]; then
    print "nvim config not found. Cloning nvim..."
    gh repo clone nvim ~/.config/nvim
fi

if [ ! -d ~/.config/tmux/plugins ]; then
    print "tmux config not found. Cloning tmux..."
    mkdir -p ~/.config/tmux/plugins
    gh repo clone tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    ~/.config/tmux/plugins/tpm/bin/install_plugins
fi

if ! id -u kanata >/dev/null 2>&1; then
    print "Adding kanata"
    ! getent group uinput >/dev/null && sudo groupadd uinput
    sudo useradd -MG input,uinput -s /bin/false -U kanata
    sudo mkdir -p /etc/udev/rules.d
    sudo echo 'KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' |
        sudo tee /etc/udev/rules.d/50-kanata.rules >/dev/null
    sudo chown root:kanata /usr/bin/kanata
    sudo chmod 754 /usr/bin/kanata
    sudo cat $SCRIPT_DIR/kanata/kanata.service | sudo tee /etc/systemd/system/kanata.service >/dev/null
    sudo udevadm control --reload-rules && sudo udevadm trigger
    sudo modprobe uinput
    sudo systemctl daemon-reload
    sudo systemctl enable kanata.service
    sudo systemctl start kanata.service
    sudo systemctl status kanata.service 1>/dev/null
fi
