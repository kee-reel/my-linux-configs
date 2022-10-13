#!/bin/bash
for f in $(ls -a); do
    if [[ $f == ".git" ]]; then
        continue
    fi
    cp -r $f ~/
done
