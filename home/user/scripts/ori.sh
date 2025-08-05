#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo '[USAGE:]
./ori.sh normal|inverted|left|right|flipped'
    exit 0
fi

case $1 in

  right)
    wlr-randr --output HDMI-A-1 --transform 270
    ;;

  left)
    wlr-randr --output HDMI-A-1 --transform 90
    ;;

  inverted)
    wlr-randr --output HDMI-A-1 --transform 180
    ;;

  flipped)
    wlr-randr --output HDMI-A-1 --transform flipped
    ;;

  normal)
    wlr-randr --output HDMI-A-1 --transform normal
    ;;
  *)
    echo 'Error: Unexpected parameter

[USAGE:]
./ori.sh normal|inverted|left|right|flipped'
    exit 0
    ;;
esac

#
# do a "ls /sys/class/drm" to see the monitors connected, and their names for wlr-randr
# 
