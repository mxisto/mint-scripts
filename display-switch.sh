#!/usr/bin/env bash

# requires arandr and zenity packages

screenlayout="$HOME/.screenlayout"
items=()

shopt -s nullglob

for entry in "$screenlayout"/*; do
    echo "$entry"
    items+=("$entry")
done

selected=$(
    zenity --list \
        --width=500 --height=250 \
        --title="Select a screen layout" \
        --column="Layout" \
        "${items[@]}"
)

if [[ -n "$selected" ]]; then
    echo "Selected: $selected"
    $selected
fi
