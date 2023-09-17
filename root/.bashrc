#!/bin/bash
clear
cat ~/Scripts/MOTD.txt

PROMPT_COMMAND='separator'

# Prompt command to print a graphical divider with time and date stamp between shell prompts.
function separator() {
    local datestring=$(date +"%Y%m%d, %A")
    local timestring=$(date +"%H%M%S")

    local separator_length=80
    local date_length=${#datestring}
    local time_length=${#timestring}
    local space_length=$((separator_length - date_length - time_length - 8))

    local line_top="┌$(printf "%78s" | tr ' ' ' ')┐"
    local line_middle="│ $(printf " %s %${space_length}s %s " "$datestring" "" "$timestring") │"
    local line_bottom="└$(printf "%78s" | tr ' ' ' ')┘"

    printf "%s\n"
    printf "%s\n" "$line_top"
    printf "%s\n" "$line_middle"
    printf "%s\n" "$line_bottom"
}

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Set the time format for commands that take a long time to run
export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'

# Set the history ignoring commands
export HISTIGNORE="&:bg:fg:ll:h"

# Set the format of the history command
export HISTTIMEFORMAT="[%d/%m %H:%M:%S] "
export HISTCONTROL=ignoredups

# Set the path to the host file
export HOSTFILE=$HOME/.hosts

PS1='\n\u@\h\n[\w]\n'
PS2='\n ▓▒░ '
