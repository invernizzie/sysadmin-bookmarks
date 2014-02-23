# Disable screen blanking in ubuntu

There are multiple different layers, that influence the behavior of the monitor. To completely disable any suspension of the monitor you need to disable it in every of those layers:

1. layer: virtual consoles

Sets the interval of inactivity, in minutes, after which the screen will be automatically blanked:

`setterm -blank 0`

Sets the VESA powerdown interval in minutes:

`setterm -powerdown 0`

2. layer: X

Turn the screen saver function off. The s option lets you set the screen saver parameters.

`xset s off`

Disable DPMS if enabled:

`xset -dpms`

To find out which values are set type xset -q in a terminal. A part of the output should look like this:

```
Screen Saver:
  prefer blanking:  yes    allow exposures:  yes
  timeout:  0    cycle:  0
```

and this:

```
DPMS (Energy Star):
  Standby: 0    Suspend: 0    Off: 0
  DPMS is Disabled
```
