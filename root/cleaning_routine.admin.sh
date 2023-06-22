#!/bin/bash

#!/bin/bash

# Schema maintenance revision co-authored by @apple-fritter and @bertgeeten
# Define the directory that contains the schema files
SCHEMA_DIR="/usr/share/glib-2.0/schemas"

# Check if the directory exists
if [ ! -d "$SCHEMA_DIR" ]; then
  echo "Directory $SCHEMA_DIR not found."
  exit
fi

# Find all installed applications that reference schema files
INSTALLED_APPS=$(gsettings list-schemas | grep -o '^[^\.]*')

# Find all the schema files in the directory
SCHEMA_FILES=$(find "$SCHEMA_DIR" -type f -name "*.gschema.xml")

# Remove the schema files that are not referenced by any installed applications
for schema_file in $SCHEMA_FILES; do
  schema=$(basename "$schema_file" .gschema.xml)
  if ! grep -q "^$schema$" <<< "$INSTALLED_APPS"; then
    rm -f "$schema_file"
    echo "Removed $schema_file"
  fi
done

# Compile remaining schemas
glib-compile-schemas /usr/share/glib-2.0/schemas


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
