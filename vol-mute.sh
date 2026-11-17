#!/bin/sh

exec amixer set Master toggle &
#notify-send -t 500 "🔈 Sound: $(amixer get Master | grep 'Front Left:' | awk '{print $6}' | tr -d '[]')" &
