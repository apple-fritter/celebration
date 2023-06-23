#!/bin/bash
clear

PROMPT_COMMAND='separator'

# Prompt command to print a graphical divider with time and date stamp between shell prompts.
function separator() {
    local datestring=$(date +"%Y%m%d, %A")
    local timestring=$(date +"%H%M%S")

    local separator_length=80
    local date_length=${#datestring}
    local time_length=${#timestring}
    local space_length=$((separator_length - date_length - time_length - 8))

    local line_top="┌$(printf "%78s" | tr ' ' '-')┐"
    local line_middle="│ $(printf " %s %${space_length}s %s " "$datestring" "" "$timestring") │"
    local line_bottom="└$(printf "%78s" | tr ' ' '-')┘"

    printf "%s\n" "$line_top"
    printf "%s\n" "$line_middle"
    printf "%s\n" "$line_bottom"
}

# Set the time format for commands that take a long time to run
export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'

# Set the history ignoring commands
export HISTIGNORE="&:bg:fg:ll:h"

# Set the format of the history command
export HISTTIMEFORMAT="[%d/%m %H:%M:%S] "
export HISTCONTROL=ignoredups

# Set the path to the host file
export HOSTFILE=$HOME/.hosts

# Aliases

## Reload the .bashrc file.
alias reload='source /root/.bashrc'

## Add the -i flag to cp and mv to prompt before overwriting
alias cp='cp -i'
alias mv='mv -i'

## Add the -p flag to mkdir to create parent directories as needed
alias mkdir='mkdir -p'

## Aliases for commonly used commands
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Aliases to make disk usage and disk space more readable
alias du='du -kh'
alias df='df -kTh'

## Alias to list files with colors and long format
alias ls='ls -aclX --color'

## Alias to send a notification when a long running command is complete
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## Alias to define default wget arguments, to appear as a web browser request
alias wget='wget -c --user-agent="Mozilla/5.0 (X11; Ubuntu 23.04; rv:109.0) Gecko/20100101 Firefox/109.0"'

# System management shell scripts
alias shcln="sh /root/cleaning_routine.admin.sh"
alias upd="sh /root/update_installed_packages.sh"
alias zerofill="sh /root/unclefill.sh"

PS1='[\u \h] \w '
PS2='▓▒░ '
