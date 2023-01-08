activewin=$(hyprctl activewindow | grep -Po "(?<=Window ).*(?= ->)")
activeworkspace=$(hyprctl workspaces | pcregrep -Mo "(?<=workspace ID )(.|\n[^\n\n])*(?=$activewin)" | grep -o -P ".*(?= \()")

echo $activeworkspace