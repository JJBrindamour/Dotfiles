#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xrandr --output LVDS-1 --primary --mode 1366x768 --pos 117x900 --rotate normal --output VGA-1 --off --output HDMI-1 --mode 1600x900 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-2 --off --output HDMI-3 --off --output DP-2 --off --output DP-3 --off

$HOME/.config/polybar/launch.sh &

sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

xsetroot -cursor_name left_ptr &

pamixer --set-volume 100 &

xfce4-power-manager &
lxpolkit &
picom --config $HOME/.config/picom.conf &
nitrogen --restore &
dunst &

