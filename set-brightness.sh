#!/bin/sh

# This script sets brightness in Intel HD Graphics controllers.

case $1 in
  "high")
    BRIGHTNESS=4882 ;;

  "medium")
    BRIGHTNESS=2442 ;;

  "low")
    BRIGHTNESS=490 ;;

  *)
    echo "Usage: ${0} <high|medium|low>"
    exit 1 ;;
esac

echo $BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness
exit 0
