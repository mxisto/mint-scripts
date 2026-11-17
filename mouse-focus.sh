#! /bin/bash

estado=$(gsettings get org.cinnamon.desktop.wm.preferences focus-mode)
char="'"
estado=${estado//$char}
echo $estado
var="click"

if [ "$estado" = "$var" ]; then
    gsettings set org.cinnamon.desktop.wm.preferences focus-mode 'mouse'
    notify-send "🖱️🐭️ Mouse Focus on Hover ENABLED"
else
    gsettings set org.cinnamon.desktop.wm.preferences focus-mode 'click'
    notify-send "🖱️🐭️ Mouse Focus on Hover DISABLED"
fi
