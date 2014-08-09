Run syndaemon on startup:

`syndaemon -i 1 -Kd`

To find out about the options run `syndaemon -?`.

This will disable clicking by tapping and touchpad scrolling. To fix it, copy `/usr/share/X11/xorg.conf.d/50-synaptics.conf` to `/etc/X11/xorg.conf.d` (create the directory if it doesn't exist).
Use the following options to enable two-finger scrolling:

```
Section "InputClass"
  Identifier "touchpad catchall"
  Driver "synaptics"
  MatchIsTouchpad "on"
		Option "VertTwoFingerScroll" "on"
		Option "HorizTwoFingerScroll" "on"
# This option is recommend on all Linux systems using evdev, but cannot be
# enabled by default. See the following link for details:
# http://who-t.blogspot.com/2010/11/how-to-ignore-configuration-errors.html
  MatchDevicePath "/dev/input/event*"
EndSection
```

---

Lots of information on the topic can be found in the Arch Linux wiki [here](https://wiki.archlinux.org/index.php/Touchpad_Synaptics).
