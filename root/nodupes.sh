sort "$1" | awk '!a[$0]++' > "$1".tmp && mv "$1".tmp "$1"
