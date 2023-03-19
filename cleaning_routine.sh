#!/bin/bash
# Upon execution, set working directory to the user's home.
cd ~

# Home directory cleanup.
rm -v .wget-hsts
rm -rv .cache/ .android/ .mozilla/
rm -v .bash_history .sudo_as_admin_successful

# Rebuild Mozilla Firefox configuration from scratch
p7zip -d -k mozilla.7z 

# Clean up Adobe Reader cache
find ~/.adobe/Acrobat/[0-9]*/Cache/ -delete

# Clean up Adobe Reader MRU
find ~/.adobe/Acrobat/[0-9]*/MRU/ -delete

# Clean up Adobe Reader tmp files
find ~/.adobe/Acrobat/[0-9]*/Temp/ -delete

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

# Clean up gedit recent documents
find ~/.local/share/recently-used.xbel -delete

# Clean up Gnome run command history
find ~/.gnome2/keyrings/ -delete

# Clean up Gnome search history
find ~/.local/share/gnome-shell/search_history -delete

# Clean up LibreOffice history
find ~/.config/libreoffice/4/user/registrymodifications.xcu -delete

# Clean up links2 history
find ~/.links2/history -delete

# Clean up SQLite3 history
find ~/.sqlite_history -delete

# Clean up system clipboard
find ~/.local/share/clipboard -delete

# Clean up desktop entry files
find ~/.local/share/applications/ -name "*.desktop" -delete

# Clean up recent documents
find ~/.local/share/recently-used.xbel -delete

# Clean up trash
rm -rf ~/.local/share/Trash/*