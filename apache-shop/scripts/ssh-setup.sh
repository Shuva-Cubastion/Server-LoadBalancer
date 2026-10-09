
set -e
U="${1:-$USER}"
H="${2:-127.0.0.1}"
sudo apt install -y openssh-server
sudo systemctl enable --now ssh
[ -f ~/.ssh/id_ed25519 ] || ssh-keygen -t ed25519 -N "" -f ~/.ssh/id_ed25519
ssh-copy-id "$U@$H"
ssh "$U@$H" hostname
