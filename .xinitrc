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

# Start gpg-agent
eval $(gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info")
if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
fi

exec awesome
