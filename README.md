# .bashrc and shell scripts for extra cushion
In this repository, I've shared the scripts and configurations that I've used to enhance my productivity and simplify tasks in my Linux environment. By sharing my work, I hope to contribute to the community's efforts to improve workflow and achieve better results.

Whether you're a seasoned Linux user or new to the platform, I believe these tools can help streamline your workflow, reduce errors, and increase efficiency. Please feel free to explore and experiment with the configurations, and do let me know if you have any feedback or suggestions. I'm always open to learning and improving, and I hope this resource can be helpful to you as well.

## The .bashrc files included
The bashrc files provided in this project have been developed to improve users' experience and productivity when working in the BASH shell.

One of the notable features of these files is the visually appealing divider that displays the time and date stamp between prompts. This not only enhances the shell's appearance but also aids in debugging.

Furthermore, the bashrc files comprise various settings and aliases that streamline frequently used commands, making them more efficient. For instance, they establish the time format for long-running commands, provide aliases to present disk usage and disk space in a more readable manner, and show files with color and long format.

In addition, these files create an alias to notify users when a long-running command has been completed, specify default wget arguments to appear as a web browser request, and include aliases for referencing system management shell scripts.

Moreover, the history command and history ignoring commands' format have been tailored to enhance productivity. Lastly, the prompt levels PS1 and PS2 have been defined, enabling users to customize the prompt's appearance to suit their preferences. In summary, these bashrc files offer an array of powerful tools that can assist users in working more efficiently.

## Scripts:

### Root:
The "cleaning_routine.admin.sh" script is intended to be executed from a root prompt and carries out a sequence of cleanup tasks to optimize system performance. It starts by scanning for all schema files that are not utilized by any installed applications and removes them to free up space. Furthermore, the script eliminates unnecessary files, including backup, DS_Store, Thumbs.db, and tmp files, which tend to accumulate over time and consume valuable storage space.

Along with removing specific files, the script performs general system maintenance tasks such as clearing the Java cache, SQLite3 history, system cache, rotated logs, and thumbnail cache. It also eliminates packages that are no longer necessary and clears the local package cache.

To further improve system performance, the script cleans up the home directory, which includes gedit recent documents, Gnome run command and search history, and LibreOffice links2 SQLite3 histories. The system clipboard, desktop entry files, and recent documents are also cleaned up. Finally, the script empties all trashes, ensuring that no unnecessary clutter is left on the system.

Overall, the "cleaning_routine.sh" script is a comprehensive system cleanup tool that can significantly enhance system performance and efficiency.

The "nodupes.sh" script is a powerful yet straightforward tool designed to streamline data processing tasks. Specifically, the script sorts a text file alphabetically and eliminates duplicated lines, which can be incredibly useful when merging two datasets. This not only saves time and effort but also ensures the accuracy and integrity of the data. Whether you're a data analyst, scientist, or someone who regularly works with large amounts of data, "nodupes.sh" can help simplify your workflow and improve the quality of your results.

The "update_installed_packages.sh" script is a helpful tool that automates the process of updating all installed software packages on your system. By running the script from a root prompt, it will automatically search for and install any available updates. This saves time and effort while also keeping your system secure and up-to-date with the latest features and bug fixes. Whether you're a sysadmin, developer, or a regular user, "update_installed_packages.sh" can ensure that your system remains current and runs smoothly.

The "unclefill.sh" script is a useful utility that can help you quickly and easily fill a target file with a specified input pattern. This is particularly useful when you need to generate large amounts of sample data for testing or demonstration purposes. With "unclefill.sh," you can specify the pattern you want to use and the target file you want to fill, and the script will take care of the rest.

### User:
The "cleaning_routine.sh" script is a powerful tool that optimizes system performance by performing various cleanup tasks. Firstly, it can rebuild the Mozilla Firefox configuration from scratch using a backup skeleton, if available.

Additionally, the script cleans up a variety of files and directories that tend to accumulate over time and occupy valuable storage space. These include Adobe Reader cache, MRU and temp files, bash history, backup DS_Store, Thumbs.db and tmp files, gedit recent documents, Gnome run command and search history, LibreOffice links2 SQLite3 histories, system clipboard, desktop entry files, and recent documents.

Finally, the script empties all trashes, ensuring that there is no unnecessary clutter left on the system. Overall, the "cleaning_routine.sh" script is a comprehensive system clean-up tool that can significantly enhance the performance and efficiency of a system by eliminating unwanted files and optimizing system settings.
