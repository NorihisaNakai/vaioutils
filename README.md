## fan-control and battery charge limit setting on boottime

## usage
```
$ sudo make install
```
oneshot on boot-time with systemd
* start fan-control performance
* start battery-limit care


## uninstall
```
$ sudo make uninstall
```

## change setting

1. fan-control
fix in /usr/sbin/vaio_fancontrol.sh
change from performance to silent or balanced

2. battery charge limit
fix in /usr/sbin/vaio_fancontrol.sh
change from 80 to [0|50|80]
0 is no limit