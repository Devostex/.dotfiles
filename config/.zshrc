export ZSH="$HOME/.oh-my-zsh"
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH=/opt/flutter/bin:$PATH
export PATH=/home/devo/.local/bin:$PATH

ZSH_THEME="robbyrussell"
plugins=(git sudo yarn)

source $ZSH/oh-my-zsh.sh
TERM=xterm

alias wr='nmcli d wifi rescan && nmcli d wifi connect OnePlus\ Nord\ CE\ 2'
alias updot='cd ~/.dotfiles && git pull && python link.py'
alias trash='mv -t ~/.trash'
