#!/bin/bash

alias v='/usr/bin/nvim'
# alias v='/usr/local/bin/nvim'
alias vz='v ~/.zshrc'
alias sz='source ~/.zshrc'
alias vb='v ~/.bash_aliases'
alias sb='source ~/.bash_aliases'
alias cat='bat -f --theme GitHub'
alias cdd='cd ~/Documents/ && l.'
alias cdb='cd ~/Books/ && l.'
alias cddl='cd ~/Downloads/ && l.'
alias cdp='cd ~/Pictures/ && l.'
alias cdm='cd ~/Music/ && l.'
alias cdd='cd ~/Documents/ && l.'
alias cdv='cd ~/Videos/ && l.'
alias cdn='cd ~/.config/nvim/ && l.'
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

alias update='sudo pacman -Syyu'
alias search='pacman -Ss'
alias install='sudo pacman -S'
alias remove='sudo pacman -R'

alias l='exa -F --git --group-directories-first --icons --no-time'
alias lt='exa -TF --level=2 --icons --no-time'
alias l.='exa -laF --group-directories-first --grid --git --icons --no-time'
alias ll='exa -lF --group-directories-first --grid --git --icons --no-time'
alias fm="man -k . | fzf --preview 'bat -f {}' --prompt='Man> ' | awk '{print $1}' | xargs -r man"
alias cw='curl wttr.in'
alias fzf='fzf --preview "bat -f {}"'

alias md='mkdir -pv'
alias rd='rmdir -v'
alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'
alias p='pwd'
