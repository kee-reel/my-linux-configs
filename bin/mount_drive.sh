lsblk -r | cut -d  -f 1 | tail --lines=+2 | fzf
