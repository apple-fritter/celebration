## Reload the .bashrc file.
alias reload='source /root/.bashrc'

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

## Define default wget arguments, to appear as a web browser request, and make an easy recursive download
alias wget='wget -c --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"'

## System management shell scripts
alias shcln="bash ~/Scripts/cleaning_routine.admin.sh"
alias upd="bash ~/Scripts/update_installed_packages.sh"

## File manipulation
alias dos2="bash ~/Scripts/d0s2unix.sh"
alias nodup="sh ~/Scripts/nodup.sh"
alias zerofill="bash ~/Scripts/unclefill.sh"

## dd with progress bar
alias dd='dd status=progress'
