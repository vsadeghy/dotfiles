#!/bin/sh

print() {
    echo -e "\e[1;35m $1 \e[0m"
}

nolog() {
    $@ 2> >(grep -vi 'skipping' >&2) 1>/dev/null
}

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
cd $SCRIPT_DIR

stow_setup() {
    nolog sudo pacman -S --noconfirm --needed stow
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
    stow -R .
    stow -R home -t $HOME
    source $HOME/.profile
}


install_packages(){
    print "installing Packages"
    grep -v '^#' $SCRIPT_DIR/packages | xargs -a /dev/stdin -r sudo pacman -S --noconfirm --needed
    if ! command -v yay >/dev/null; then
        print "installing yay"
        nolog git clone https://aur.archlinux.org/yay-bin.git
        cd yay
        nolog makepkg -si --noconfirm
        cd ..
        rm -rf yay
    fi
    
    print "Installing AUR Packages"
    grep -v '^#' $SCRIPT_DIR/packages-aur | xargs -a /dev/stdin -r yay -S --noconfirm --needed
}

ssh_setup() {
    SSH_KEY="$HOME/.ssh/id_ed25519"
    if [ ! -f $SSH_KEY ]; then
        print "Generating SSH key"
        read -p "Enter your SSH key comment: " comment
        ssh-keygen -t ed25519 -C "$comment" -f "$HOME/.ssh/id_ed25519" -N ""
    fi
}

gh_setup() {
    if ! nolog gh auth status; then
        ssh_setup
        print "Adding Github and SSH key"
        print "Please log in to your GitHub account"
        gh auth login -wp ssh -s admin:public_key || print "COULDN'T ADD GITHUB ACCOUNT" && exit 1
        gh ssh-key add $SSH_KEY.pub
        gh config set git_protocol ssh
        print ""94A2-2AF4
    fi
}

nvim_setup() {
    if [ ! -d ~/.config/nvim ]; then
        gh_setup
        print "nvim config not found. Cloning nvim..."
        nolog gh repo clone nvim ~/.config/nvim
    fi
}

tmux_setup(){
    install_plugins=~/.config/tmux/plugins/tpm/bin/install_plugins
    if [ ! -e $install_plugins ]; then
        print "Tmux config not found. Cloning tmux..."
        mkdir -p ~/.config/tmux/plugins
        git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    fi
    nolog $install_plugins
}

kanata_setup() {
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
        nolog sudo systemctl enable kanata.service
        sudo systemctl start kanata.service
        sudo systemctl status kanata.service
    fi
}

zen_colorscheme(){
    if [ ! -d ~/.zen ]; then
        nohup zen-browser &
	sleep 1 && pkill zen && sleep 1
    fi
    ZEN_PROFILE=`fd 'release' ~/.zen`
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


# sudo pacman -Sy
# sudo pacman -Su
stow_setup
# install_packages

ssh_setup 
 
nvim_setup 
tmux_setup

kanata_setup 

gui_setup 

print "Setup finished"
