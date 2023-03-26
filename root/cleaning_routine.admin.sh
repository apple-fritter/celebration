#!/bin/bash

# Clean up home directory
cd ~
rm -rv .cache/
rm -v .wget-hsts

# Define the directory that contains the schema files
SCHEMA_DIR="/usr/share/glib-2.0/schemas"

# Check if the directory exists
if [ ! -d "$SCHEMA_DIR" ]
  then echo "Directory $SCHEMA_DIR not found."
  exit
fi

# Find all the schema files that are not used by any installed applications
UNUSED_SCHEMAS=$(find $SCHEMA_DIR -type f -name "*.gschema.xml" -print0 | xargs -0 grep -L "gettext" 2>/dev/null)

# Remove the unused schema files
for schema in $UNUSED_SCHEMAS; do
  rm -f $schema
  echo "Removed $schema"
done

# Compile the remaining schema files
glib-compile-schemas $SCHEMA_DIR

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
