#!/bin/bash
# Upon execution, set working directory to the user's home.
cd ~

# Home directory cleanup.
rm -rv ~/.cache/ ~/.android/ 
rm -v ~/.xsession-errors* ~/.wget-hsts ~/.bash_history ~/.sudo_as_admin_successful

# Rebuild browser configuration from skeleton file
rm -rv ~/.config/BraveSoftware ~/.config/chromium ~/.mozilla/
p7zip -d -k browser-skel.7z 

# Clean up backup files
find ~/ -name "*.bak" -delete

# Clean up DS_Store files
find ~/ -name ".DS_Store" -delete

# Clean up Thumbs.db files
find ~/ -name "Thumbs.db" -delete

# Clean up tmp files
find ~/ -name "*.tmp" -delete

# Remove editor cruft
rm -rf ~/.config/geany/ ~/.config/Code/ ~/.config/featherpad/ ~/.vscode

# Clean up desktop entry files
find ~/.local/share/applications/ -name "*.desktop" -delete

# Clean up trash
rm -rfv ~/.local/share/Trash/*
