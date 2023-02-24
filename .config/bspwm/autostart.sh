#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

$HOME/.config/polybar/launch.sh &

sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

xsetroot -cursor_name left_ptr &

pamixer --set-volume 100 &

xfce4-power-manager &
lxpolkit &
picom --config $HOME/.config/picom.conf &
nitrogen --restore &
dunst &

