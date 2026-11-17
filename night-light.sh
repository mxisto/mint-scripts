#!/bin/sh

# requires the xsct/sct package

sleep 5

estado=$(xsct | awk '/^Screen/ {print $5}')

valor=0

turn="off"

if [ $estado -eq 6500 ]; then #temperature value, change this to you preferred temperature
    valor=3000
    turn="on"
    xsct $valor && notify-send "💡Night Light:" $turn
else
    valor=0
    turn="off"
    xsct $valor && notify-send "💡Night Light:" $turn
fi

