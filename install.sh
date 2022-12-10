#!/bin/bash
rsync -vaz ./.config/* ~/.config/
for f in bin .bashrc .gitconfig; do
    ln -s $(realpath $f) ~/$f
done
