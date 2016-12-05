xkb_Caps_hotkeys
================

Hotkeys CapsLock + ijk; => Up, Left, Down, Right

-

Update for Xubuntu/Ubuntu 16.10:
1. Run ./update_xkb.sh
2. Restart system

-

<h3>Work for me</h3>

1. Copy xkb folder to "/usr/share/X11/xkb"
2. Run
```
# apply xkb
setxkbmap -symbols my -print | xkbcomp -I"$HOME/.config/xkb" - "${DISPLAY%%.*}"

# xmodmaps reset after change layout
sudo dpkg-reconfigure xkb-data
```

-

<h3>Old way:</h3>

Create file: ~/.Xmodmap file
 ```
clear lock
remove Lock = Caps_Lock
remove Shift = Caps_Lock

keycode 66 = NoSymbol NoSymbol
keycode 66 = Mode_switch

keysym j = j J Left NoSymbol NoSymbol NoSymbol
keysym k = k K Down NoSymbol NoSymbol NoSymbol
keysym i = i I Up NoSymbol NoSymbol NoSymbol
keysym l = l L Right NoSymbol lstroke Lstroke
keysym u = u U BackSpace NoSymbol lstroke Lstroke
keysym o = o O Delete NoSymbol lstroke Lstroke
keysym m = m M Home NoSymbol lstroke Lstroke
keysym comma = comma less End NoSymbol lstroke Lstroke
keysym p = p P Prior NoSymbol lstroke Lstroke
keysym semicolon = semicolon colon Next NoSymbol lstroke Lstroke
```
Apply changes:
```
xmodmap ./.Xmodmap
```

This settings reset after change keyboard layout

-

Links:

XKB: перенастроим клавиши под себя любимого
http://habrahabr.ru/post/222285/

заметки на «полях» клавиатуры, про xkb
http://unixforum.org/index.php?showtopic=49203 (pdf)

Настройка XKB.
http://pascal.tsu.ru/other/xkb/

X KeyBoard extension
https://wiki.archlinux.org/index.php/XKB

Capslock + HJKL to arrow keys
http://superuser.com/questions/96299/mapping-superhjkl-to-arrow-keys-under-x

xkb on maemo - problems generating level3 left and right
http://www.spinics.net/lists/xorg/msg35931.html

System wide vim-style (hjkl) navigation (xmodmap)
http://shellhell.wordpress.com/2012/01/31/hello-world/

Mapping Super+hjkl to arrow keys under X
http://superuser.com/questions/96299/mapping-superhjkl-to-arrow-keys-under-x

Reconfigure keyboard layout - 13.10, 14.04 [duplicate]
http://askubuntu.com/questions/436686/reconfigure-keyboard-layout-13-10-14-04
