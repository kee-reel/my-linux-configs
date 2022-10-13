#!/bin/bash
for f in $(ls -a); do
    if [[ $f == ".git" || $f == "install.sh" ]]; then
        continue
    fi
    cp -r $f ~/
done
