#!/bin/bash

cp -r /usr/share/X11/xkb /usr/share/X11/xkb_bak

patch /usr/share/X11/xkb/symbols/pc < pc.diff
patch /usr/share/X11/xkb/symbols/ru < ru.diff
patch /usr/share/X11/xkb/symbols/us < us.diff

patch /usr/share/X11/xkb/types/basic < basic.diff

dpkg-reconfigure xkb-data

echo "Need restart"
