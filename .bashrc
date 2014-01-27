#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set colors
eval $(dircolors -b ~/.dir_colors)

# Environment variables
export LANG=en_US.UTF-8
export EDITOR=vim

# Aliases
alias ls='ls -F --color=auto'
alias lal='ls -al'
alias grep='grep --color=auto'
alias rm='rm -i'

alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'

alias battery='acpi -b'

alias .git='git --work-tree=$HOME --git-dir=$HOME/.files.git'

alias nctlhome='sudo netctl start buffalo'
alias nctlapt='sudo netctl start dlink'
alias nctlumn='sudo netctl start umnsecure'
alias nctlstop='sudo netctl stop-all'
alias pingtest='ping -c 4 www.google.com'

alias pacupg='sudo pacman -Syu'
alias pacinst='sudo pacman -S'
alias pacorphans='pacman -Qdt'

# Prompt formatting
#PS1='\u@\h \W\$ '
PS1="$(if [[ ${EUID} == 0 ]];
       then echo '\[\033[01;31m\]\h';
       else echo '\[\033[01;32m\]\u@\h';
       fi)\[\033[01;34m\] \w \$\[\033[00m\] "

# Completion in git
source /usr/share/git/completion/git-completion.bash

# Manpages coloring
man() {
  env LESS_TERMCAP_mb=$'\E[01;31m' \
      LESS_TERMCAP_md=$'\E[01;31m' \
      LESS_TERMCAP_me=$'\E[0m' \
      LESS_TERMCAP_se=$'\E[0m' \
      LESS_TERMCAP_so=$'\E[01;44;33m' \
      LESS_TERMCAP_ue=$'\E[0m' \
      LESS_TERMCAP_us=$'\E[01;32m' \
  man "$@"
}

