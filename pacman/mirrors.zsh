alias pacman-mirrors="curl -Ls -o - https://www.archlinux.org/mirrorlist/\?country\=US\&protocol\=http\&protocol\=https\&ip_version\=4\&ip_version\=6\&use_mirror_status\=on | sed -e 's/^#//'"
alias pacman-mirrors-update="pacman-mirrors | sudo tee /etc/pacman.d/mirrorlist >/dev/null"
