#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

### Resoluiton & Monitor ###
# run "xrandr --output DP2 --right-of eDP1 --auto"
run "xrandr --output eDP-1 --right-of HDMI-1 --auto" 

### Statusbar ###
#bash ~/.dwm/bar/statusbar.sh &
run "dwmbar"
#slstatus &
# run "numlockx on"
# run "volumeicon"
# run "nm-applet"
# run "blueberry-tray"
# run "klipper"
# ibus-daemon -drxR &


### Notification deamon ###
# run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "dunst"


### Power Manager ###
run "xfce4-power-manager"


### Polkit authentication agent ###
# run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
#run "/usr/lib/polkit-kde-authentication-agent-1"
bash setxkbmap -layout us,ru && setxkbmap -option 'grp:alt_shift_toggle' 

### Wallpapers & Conkies ###
run "nitrogen --restore"
# run "conky -c $HOME/.config/dwm/conky/qlock_two.conkyrc"
# run "conky -c $HOME/.local/src/dwm/conky/simple.conkyrc"


### Compositor ###
run "picom --experimental-backends" #--config ~/.config/picom/picom.conf &

#xcompmgr -cFf &

### Keybinding ###
#sxhkd -c ~/.config/sxhkd/sxhkdrc &


### X11 ###
#xrdb -load ~/.config/X11/xresources &


# imwheel -b 45 &
