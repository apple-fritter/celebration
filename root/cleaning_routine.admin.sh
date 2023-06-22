# Schemas section disabled until fixed: TBD

# Clean up bash history
find ~/.bash_history -delete

# Clean up backup files
find ~/ -name "*.bak" -delete

# Clean up DS_Store files
find ~/ -name ".DS_Store" -delete

# Clean up Thumbs.db files
find ~/ -name "Thumbs.db" -delete

# Clean up tmp files
find ~/ -name "*.tmp" -delete

# Clean up Java cache
find ~/.cache/ -name "hsperfdata_*" -delete

# Clean up SQLite3 history
find ~/.sqlite_history -delete

# Clean up system cache
find ~/ -name "*~" -delete

# Clean up rotated logs
sudo find /var/log/ -name "*.gz" -delete

# Clean up trash
rm -rf ~/.local/share/Trash/*

# Clean up thumbnail cache
find ~/.cache/thumbnails -delete

# Clean up X11 debug logs
find ~/.xsession-errors -delete

# Remove packages that are no longer needed
apt-get -y autoremove --purge

# Clear the local package cache
apt-get -y clean
