#!bin/sh
export PATH="${PATH}:/home/scripts:/usr/local/bin"
export BROWSER="firefox"
export LANG="hu_HU.utf8"
export LC_ALL="hu_HU.utf8"
export EDITOR="nvim"
export TERMINAL="alacritty"

sxhkd &
exec bspwmm

feh --bg-scale ~/wp/win.jpg &
xsetroot -cursor_name left_ptr &
nm-applet &
setxkbmap -model pc104 -layout hu &
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
