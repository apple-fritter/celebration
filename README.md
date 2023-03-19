Here are some examples of how I have made my life in the BASH shell more comfortable.

"nodupes.sh" simply sorts a text file alphabetically and removes duplicated lines, which I find helpful after merging two datasets.

"update_installed_packages.sh," when ran from a root prompt, will update all installed software packages.

"unclefill.sh" will overwrite-fill a target file with a specified input pattern.

"cleaning_routine.admin.sh," when ran from a root prompt, will find all the schema files that are not used by any installed applications, remove the unused schema files, clean up bash history, and remove backup, DS_Store, Thumbs.db, and tmp files. This cleaner also clean up home directory, Java cache, SQLite3 history, system cache, rotated logs, thumbnail cache, X11 debug logs, clear the local package cache, remove packages that are no longer needed, and empty trashes.

"cleaning_routine.sh" will Rebuild Mozilla Firefox configuration from scratch, assuming there was a backup skeleton present, clean up the home directory, Adobe Reader cache MRU and temp files, bash history, backup DS_Store Thumbs.db and tmp files, clean up gedit recent documents, Gnome run command and search history, clean up LibreOffice links2 SQLite3 histories, clean up system clipboard, desktop entry files and recent documents, and empty trashes.

As uploaded, the bashrcs follow a naming convention that should be easy to interpret and are user specific. Their prompts print a visual divider with time and date stamp between prompts, for aesthetics and debugging purposes. Each also set the time format for commands that take a long time to run, sets the path to the host file, sets aliases for arguments passed to frequently used commands, aliases to make disk usage and disk space more readable and to list files with colors and long format. They also set an alias to send a notification when a long running command is complete, an alias to define default wget arguments (to appear as a web browser request,) aliases to reference system management shell scripts, and set the format of the history command and history ignoring commands, and define prompt levels PS1 and PS2.

