# Aliases

## Reload the .bashrc file.
alias reload='source ~/.bashrc'

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
alias shcln="sh ~/Scripts/cleaning_routine.sh"

# File manipulation
alias dos2="sh ~/Scripts/d0s2unix.sh"
alias nodup="sh ~/Scripts/nodup.sh"
alias zerofill="sh ~/Scripts/unclefill.sh"
