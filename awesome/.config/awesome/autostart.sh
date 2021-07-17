#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
#run xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#run caffeine
# run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

run blueberry-tray
run nm-applet --indicator
run fcitx -d
run xfce4-power-manager
run numlockx on
run setxkbmap -option caps:escape && xmodmap -e 'clear lock'
run xbanish
run nitrogen --restore
run conky

#you can set wallpapers in themes as well
#feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
#run applications from startup
#run firefox
#run atom
#run dropbox
#run insync start
#run spotify
#run ckb-next -b
#run discord
#run telegram-desktop

