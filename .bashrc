source /etc/profile
#!/bin/bash

# Disable ctrl-s and ctrl-q
stty -ixon

#Allows you to cd into directory merely by typing the directory name.
shopt -s autocd

# Infinite history.
HISTSIZE= HISTFILESIZE=


# prompt customization
#export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 1)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 7)\]\h \[$(tput setaf 2 )\]\t\W\[$(tput setaf 2)\]]\[$(tput setaf 2)\]\\$ \[$(tput sgr0)\]"

# ANSI COLORS
RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"

#export PS1= printf "${BLUE}" "[" printf "${GREEN}" "$USER" printf "${BLUE}" "]" printf "${STOP}"
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 1)\] WoLfY ] \[$(tput sgr0)\]"

# Load shortcut aliases
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"

# Load aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
PATH=/home/wolfy/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/wolfy/.local/bin/figure:/home/wolfy/.local/bin/fun:/home/wolfy/.local/bin/tools:/home/wolfy/.local/bin/cmds:/home/wolfy/.local/bin/statusbar:/home/wolfy/.local/bin/

#clear && echo ' '; printf "${RED}" && figlet -ctf shadow "WOLFY" && printf "${STOP}"

export PANEL_FIFO=/tmp/panel-fifo
export PATH=$PATH:/home/wolfy/Documents/panel
