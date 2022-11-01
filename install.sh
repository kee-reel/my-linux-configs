#!/bin/bash
for f in $(ls -a); do
    if [[ $f != ".git" && $f != "install.sh" && $f != '.' && $f != '..' ]]; then
        echo "Copy $f"
        cp -r $f ~/
    fi
done
