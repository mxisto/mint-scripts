#!/bin/sh

exec amixer set Master 5%+ &
#notify-send -t 500 "🔊+: $(amixer get Master | grep 'Front Left:' | awk '{print $5}' | tr -d '[]')" &
