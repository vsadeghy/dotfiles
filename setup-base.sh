#/bin/sh
packages="
# Linux & Kernel
linux-lts
linux-lts-headers
base-devel
efibootmgr
sudo

# basic tools
git
vim

# Hardware & CPU
dmidecode
dmraid
hdparm
hwdetect
mtools
sof-firmware
amd-ucode
intel-ucode
acpi

# GPU Drivers
linux-firmware
mesa
libglvnd
vulkan-icd-loader

# Documentation
man-db
man-pages

# Network
networkmanager
ufw

# Package Management
pacman-contrib
reflector
rebuild-detector
pkgfile

# Filesystem Tools
efitools
nfs-utils
nilfs-utils
fuse3
nss-mdns
ntfs-3g

# System Tools
htop
btop
hwinfo
arch-install-scripts

# Security & Access
opendoas
openssh

# Bootloader
grub
os-prober
"

input() {
	name=$1
	condition=$2
	shift 2
	while ! inp=$(gum input --prompt "$name: " "$@" | grep -E "$condition"); do
		gum style --foreground="#f00" "$name is not valid" >&2
	done
	echo $inp
}

echo -e "\e[1;35m Installing base packages \e[0m"
pacman -Syu --noconfirm --needed $(grep -Ev '^(#|$)' <<< "$packages") gum

ln -sf /usr/share/zoneinfo/$(timedatectl list-timezones | gum filter --prompt="Timezone: ") /etc/localtime
hwclock --systohc

locales=$(grep -E '^#[a-zA-Z0-9]' /etc/locale.gen | sed -E 's/#//; s/\s+$//')
echo $locales | gum filter --no-limit --prompt="Locales: " >> /etc/locale.gen
echo $locales | sed -E 's/(.*) .*/\1/' | gum filter --prompt="Locales: " | sed 's/^/LANG=/' >> /etc/locale.conf
locale-gen

input Hostname "^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$" > /etc/hostname
echo "Root password: "
while true; do
	passwd && break
done

while true; do
	newuser=$(input "New User's name" "^[a-z][a-z0-9_-]{0,31}$")
	if getent passwd "$newuser" > /dev/null ; then
		gum style --foreground="#f00" "User $newuser already exists" >&2
		continue
	fi
	if [ -d "/home/$newuser" ]; then
		if ! gum confirm "Home directory for $newuser already exists. continue?"; then
			continue
		fi
	fi
	useradd -m "$newuser"
	while true; do
		passwd $newuser && break
	done
	if gum confirm "Add $newuser to wheel group to allow sudo?"; then
		gpasswd -a "$newuser" wheel
		mkdir -p /etc/sudoers.d
		echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers.d/10-wheel
		echo "permit persist setenv {PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin} :wheel" > /etc/doas.conf
		chown -c root:root /etc/doas.conf
		chmod 0400 /etc/doas.conf
	fi
	break
done

mkinitcpio -P

if [ ! -d /sys/firmware/efi ]; then
	root_disk=$(df / | tail -1 | awk '{print $1}' | sed 's/p[0-9]*$//')
	grub-install --target=i386-pc "$root_disk"
	grub-install --recheck
else
	local efidir
	if mountpoint -q /boot && blkid $(findmnt -no SOURCE /boot) | grep -iq "EFI"; then
		efidir=$(gum choose --header="Where do you want to install grub?" "/efi" "/boot")
	else
		efidir=/efi
	fi
	if [ "$efidir" = "/efi" ] && ! mountpoint -q /efi; then
		mkdir -p /efi
		mp=$(fdisk -l | grep EFI | awk '{print $1}')
		if [ $(wc -l <<< "$mp") -gt 1 ]; then
			mp=$(gum choose --header="Choose the efi partition to mount: " <<< "$mp")
		fi
		if [ -n "$mp" ]; then
			mount "$mp" $efidir --mkdir
		else
			efidir=""
		fi
	fi
	if [ -z "$efidir" ]; then
		echo "No efi partition found. skipping grub install" >&2
	else
		grub-install --target=x86_64-efi --efi-directory=$efidir --bootloader-id=GRUB
	fi
fi
if [ -f /etc/default/grub ]; then
	if gum confirm "Enable os-prober?"; then
		sed -iE 's/^(?:#\s*)?(GRUB_DISABLE_OS_PROBER)=.*/\1=false/' /etc/default/grub
	fi
	grub-mkconfig -o /boot/grub/grub.cfg
fi

sed -i '/^#Color/s/^#//' /etc/pacman.conf
sed -i '/^#VerbosePkgLists/s/^#//' /etc/pacman.conf

systemctl enable NetworkManager
systemctl enable reflector.timer
ufw default deny incoming
ufw default allow outgoing
ufw allow from 192.168.0.0/16
ufw enable
