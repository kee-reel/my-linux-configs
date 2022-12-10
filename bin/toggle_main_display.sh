if [[ -z $(xrandr --listactivemonitors | grep HDMI) ]]; then
    xrandr --output HDMI-1-0 --mode 3440x1440 --auto && xrandr --output eDP-1 --off
else
    xrandr --output HDMI-1-0 --off --auto && xrandr --output eDP-1 --mode 1920x1080 --auto
fi
