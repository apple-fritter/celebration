In this repository, I have shared how I configured my bash environment in Linux to enhance productivity and facilitate purpose-specific tasks that previously took a long time to process manually. By sharing my scripts and configurations, I hope to contribute to the community's efforts to improve their workflow and achieve better results. Whether you're a seasoned Linux user or just starting out, these scripts and configurations can help you streamline your workflow, reduce errors, and increase efficiency. So take a look, try them out, and let me know what you think!

The bashrc files included in this project are designed to enhance the user experience and productivity when working in the BASH shell.

One of the key features of these files is the visual divider with a time and date stamp that is displayed between prompts. This not only adds to the aesthetics of the shell but also serves as a useful tool for debugging.

The bashrc files also include various settings and aliases that make frequently used commands more efficient. For example, they set the time format for long-running commands, provide aliases to make disk usage and disk space more readable, and list files with colors and long format.

Additionally, these files set an alias to send a notification when a long-running command is complete, define default wget arguments to appear as a web browser request, and include aliases to reference system management shell scripts.

The format of the history command and history ignoring commands are also set to enhance productivity. Finally, prompt levels PS1 and PS2 are defined, which allows for customizing the look and feel of the prompt to suit the user's preferences. Overall, these bashrc files provide a powerful set of tools to help users work more efficiently and effectively in the BASH shell.

Scripts:

Root:
The "cleaning_routine.admin.sh" script is designed to be run from a root prompt and performs a series of clean-up tasks to optimize system performance. It starts by scanning for all schema files that are not used by any installed applications and removes them to free up space. Additionally, the script clears out unnecessary files, such as backup, DS_Store, Thumbs.db, and tmp files, which can accumulate over time and take up valuable storage space.

In addition to cleaning up specific files, the script also performs general system maintenance tasks, such as clearing the Java cache, SQLite3 history, system cache, rotated logs, and thumbnail cache. It also removes packages that are no longer needed and clears the local package cache.

To further optimize system performance, the script cleans up the home directory, including gedit recent documents, Gnome run command and search history, and LibreOffice links2 SQLite3 histories. The system clipboard, desktop entry files, and recent documents are also cleaned up. Finally, the script empties all trashes, ensuring that there is no unnecessary clutter left on the system.

Overall, the "cleaning_routine.sh" script is a comprehensive system clean-up tool that can significantly improve the performance and efficiency of a system.

The "nodupes.sh" script is a simple but powerful tool designed to streamline data processing tasks. Specifically, the script sorts a text file alphabetically and removes duplicated lines, which can be incredibly helpful when merging two datasets. This not only saves time and effort but also ensures the accuracy and integrity of the data. Whether you're a data analyst, scientist, or just someone who works with large amounts of data on a regular basis, "nodupes.sh" can help simplify your workflow and improve the quality of your results.

The "update_installed_packages.sh" script is a handy tool that automates the process of updating all installed software packages on your system. Simply run the script from a root prompt, and it will automatically search for and install any available updates. This not only saves time and effort but also helps keep your system secure and up to date with the latest features and bug fixes. Whether you're a sysadmin, developer, or just a regular user, "update_installed_packages.sh" can help ensure that your system stays current and runs smoothly.

The "unclefill.sh" script is a useful utility that can help you quickly and easily fill a target file with a specified input pattern. This is particularly helpful when you need to generate large amounts of sample data for testing or demonstration purposes. With "unclefill.sh," you can simply specify the pattern you want to use and the target file you want to fill, and the script will take care of the rest.

User:
The "cleaning_routine.sh" script is a comprehensive system clean-up tool that performs several tasks to optimize system performance. Firstly, it can rebuild Mozilla Firefox configuration from scratch, provided that there is a backup skeleton present.

In addition to this, the script cleans up various files and directories that can accumulate over time and take up valuable storage space, such as Adobe Reader cache, MRU and temp files, bash history, backup DS_Store, Thumbs.db and tmp files, gedit recent documents, Gnome run command and search history, LibreOffice links2 SQLite3 histories, system clipboard, desktop entry files, and recent documents.

Furthermore, the script empties all trashes, ensuring that there is no unnecessary clutter left on the system. Overall, the "cleaning_routine.sh" script is a powerful tool that can significantly improve the performance and efficiency of a system by removing unwanted files and optimizing the system settings.
