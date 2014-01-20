#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export LANG=en_US.UTF-8
export EDITOR=vim

# Aliases
alias ls='ls -F --color=auto'
alias lal='ls -al'
alias grep='grep --color=auto'
alias battery='acpi -b'
alias rm='rm -i'

alias dotgit='git --work-tree=$HOME --git-dir=$HOME/.files.git'

alias nctlhome='sudo netctl start buffalo'
alias nctlapt='sudo netctl start dlink'
alias nctlumn='sudo netctl start umnsecure'
alias nctlstop='sudo netctl stop-all'

# Prompt formatting
PS1='\u@\h \W\$ '

# Completion in git
source /usr/share/git/completion/git-completion.bash

# Manpages coloring
man() {
  env LESS_TERMCAP_mb=$'\E[01;31m' \
      LESS_TERMCAP_md=$'\E[01;38;5;74m' \
      LESS_TERMCAP_me=$'\E[0m' \
      LESS_TERMCAP_se=$'\E[0m' \
      LESS_TERMCAP_so=$'\E[38;5;246m' \
      LESS_TERMCAP_ue=$'\E[0m' \
      LESS_TERMCAP_us=$'\E[04;38;5;146m' \
  man "$@"
}

