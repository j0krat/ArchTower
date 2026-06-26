#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# ===== ArchTower =====

alias ll='eza -lah --icons'
alias la='eza -a --icons'
alias ls='eza --icons'

alias cat='bat'

alias update='sudo pacman -Syu'

alias cls='clear'

alias ports='ss -tuln'

alias grep='grep --color=auto'

alias tree='tree -C'

alias weather='curl wttr.in'

alias iplocal='ip addr show'

alias fast='fastfetch'
