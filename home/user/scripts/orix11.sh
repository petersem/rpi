#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo '[USAGE:]
./orix11.sh normal|inverted|left|right'
    exit 0
fi

case $1 in

  right)
    xrandr --output HDMI-1 --rotate right
    ;;

  left)
    xrandr --output HDMI-1 --rotate left
    ;;

  inverted)
    xrandr --output HDMI-1 --rotate inverted
    ;;

  normal)
    xrandr --output HDMI-1 --rotate normal
    ;;
  *)
    echo 'Error: Unexpected parameter

[USAGE:]
./ori.sh normal|inverted|left|right'
    exit 0
    ;;
esac

#
# do a "ls /sys/class/drm" to see the monitors connected, and their names for wlr-randr
# 
