clear
echo -e "=== Setting all up for you, boss. ==="
echo -e "=== Get ready... ==="
sleep 1
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


