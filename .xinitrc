#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Ensure .Xresources gets loaded.
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Load userspace keybinding daemon
sxhkd &

exec awesome
