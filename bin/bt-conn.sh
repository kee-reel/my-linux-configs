#!/bin/bash

if [[ $1 =~ 'h' ]]; then
    echo "USAGE: $0 [-hma]
Connects to bluetooth device. 
    -h help
    -r restart bluetooth
    -m manual device selection. If -m is not specified, then uses device id from ~/.headphones_bt_id file
    -a setup as Pulse audio default sink"
    exit
fi

if [[ $1 =~ 'r' ]]; then
    echo 'Restarting bluetooth'
    rfkill block bluetooth && rfkill unblock bluetooth
fi

echo "Starting scan"
timeout 1 bluetoothctl scan on 1>/dev/null

echo 'Connecting'
if [[ $1 =~ 'm' ]]; then
    DEV=$(bluetoothctl devices | cut -d ' ' -f 2,3 | fzf)
    ID=$(echo $DEV | cut -d ' ' -f 1)
else
    if [[ -z $(cat ~/.default_bt_id) ]]; then
        echo 'Please put default bluetooth device id in "~/.default_bt_id" file'
        exit
    fi
    ID=$(cat ~/.default_bt_id)
fi
bluetoothctl connect $ID

if [[ $1 =~ 'a' ]]; then
    echo 'Making default PulseAudio sink'
    pactl set-default-sink bluez_sink.$(echo $ID | tr ':' '_').a2dp_sink
fi
