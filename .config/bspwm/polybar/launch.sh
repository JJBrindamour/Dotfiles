killall -q polybar

if type "xrandr" > /dev/null; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload mainbar -c ~/.config/bspwm/polybar/config &
	done
else
	polybar --reload mainbar -c ~/.config/bspwm/polybar/config &
fi
