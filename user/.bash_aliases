#!/bin/bash

# Aliases

## Reload the .bashrc file.
alias reload='source ~/.bashrc'

## Add the -i flag to cp and mv to prompt before overwriting
alias cp='cp -i'
alias mv='mv -i'

## Add the -v flag to rm to output debug
alias rm='rm -v'

## Add the -p flag to mkdir to create parent directories as needed
alias mkdir='mkdir -p'

## Commonly used commands
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Make disk usage and disk space more readable
alias du='du -kh'
alias df='df -kTh'

## List (ls) files with colors and long format
alias ls='ls -aclX --color'

## Send a notification when a long running command is complete
alias alert='notify-send --urgency=low \
  -i "$([ $? = 0 ] && echo terminal || echo error)" \
  "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'' )"'
  
## Restore previously saved defaults for VS Code. Deletes history, etc.
alias codeclean='sh ~/Scripts/code_cleanup.sh'

## Define default wget arguments, to appear as a web browser request, and make an easy recursive download
alias wget='wget -c --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"'

alias wgetmirror='wget --mirror \
  --convert-links \
  --adjust-extension \
  --page-requisites \
  --no-parent \
  -c \
  -w 2.2 \
  -e robots=off \
  --no-check-certificate \
  --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"'
  
## System management shell scripts
alias shcln='bash ~/Scripts/cleaning_routine.sh'

## File manipulation
alias dos2='bash ~/Scripts/d0s2unix.sh'
alias nodup='bash ~/Scripts/nodup.sh'
alias nodupcwd='bash ~/Scripts/nodup_cwd.sh'
alias packagelist='bash ~/Scripts/packagelist.sh'
alias zerofill='bash ~/Scripts/unclefill.sh'

## dd with progress bar
alias dd='dd status=progress'
