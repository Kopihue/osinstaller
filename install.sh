clear
echo -e "oil..."
sleep 1
echo -e "up..."
sleep 1

cd $HOME
mkdir Downloads Pictures Projects Repos
cd $HOME/Repos/

sudo pacman -S rustup --noconfirm
rustup install stable
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -Syu --noconfirm

cd $HOME

paru -S --noconfirm linux-headers intel-ucode nvidia-dkms nvidia-utils sof-firmware
paru -S --noconfirm pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber bluez bluez-utils
paru -S --noconform noto-fonts noto-fonts-emoji nerd-fonts ttf-lilex
paru -S --noconfirm hyprland sddm hyprpolkitagent alacritty hyprpaper mako wofi ranger xdg-desktop-portal-hyprland waybar wl-clipboard
paru -S --noconfirm python-pipx tree-sitter-cli neovim gcc clang ripgrep
paru -S --noconfirm openssh wireshark nmap arp-scan macchanger netcat
pipx install kuky
pipx ensurepath

cd $HOME/osinstaller/
mkdir ~/.config
mv kuky/ ~/.config/

sudo systemctl enable sddm bluetooth
systemctl enable --user pipewire pipewire-pulse wireplumber

sudo pacman -S --needed \
	 qemu-desktop libvirt virt-manager virt-viewer \
	 edk2-ovmf dnsmasq iptables-nft \
	 swtpm dmidecode

sudo systemctl enable --now libvirtd.service
sudo usermod -aG libvirt,kvm $USER

rm -rf ~/osinstaller/

kuky switch pellet
echo "REBOOT NOW"

