# celebration
Discover how a properly formatted workspace can help you unleash your creative potential and bring your ideas to life with optimized configurations and scripts. Streamline your workflow, reduce errors, and create with ease by trying them out today.

## .bashrc Files
The `.bashrc` files in this project improve your experience and productivity when working in the BASH shell. Notable features include a visually appealing divider displaying the time and date stamp between prompts, which enhances the shell's appearance and aids in debugging. Prompt levels PS1 and PS2 have been defined, enhancing the prompt's appearance.

The `.bashrc` files also comprise various settings and aliases that streamline frequently used commands, making them more efficient while the history command and history ignoring commands' format have been tailored to enhance productivity. For instance, they
* Establish the time format for long-running commands
* Provide aliases for disk usage and space
* Show files with color and long format
* Create an alias to notify users when a long-running command completes
* Specify default wget arguments to appear as a web browser request
* Include aliases for referencing system management shell scripts.

## Scripts:
### Root:
* `cleaning_routine.admin.sh` script executes a sequence of cleanup tasks to optimize system performance. It scans for all schema files that are not utilized by any installed applications and removes them to free up space. The script also eliminates unnecessary files, including backup, DS_Store, Thumbs.db, and tmp files. It performs general system maintenance tasks such as clearing the Java cache, SQLite3 history, system cache, rotated logs, and thumbnail cache. It eliminates packages that are no longer necessary and clears the local package cache.
The script cleans up the home directory, which includes gedit recent documents, Gnome run command and search history, and LibreOffice, links2, and SQLite3 histories. The system clipboard, desktop entry files, and recent documents are also cleaned up. Finally, the script empties all trashes.

* `nodupes.sh` sorts a text file alphabetically and eliminates duplicated lines, saving time and effort while ensuring data accuracy and integrity. 

* `update_installed_packages.sh` automates the process of updating all installed software packages on your system. By running the script from a root prompt, it will automatically search for and install any available updates. This saves time and effort while also keeping your system secure and up-to-date.

* `unclefill.sh` quickly fills a target file with a specified input pattern, making it useful for generating large amounts of sample data for testing or demonstration purposes.

### User:
* `cleaning_routine.sh` optimizes system performance by rebuilding the Mozilla Firefox configuration from scratch using a backup skeleton, if available. The script also cleans up various files and directories that tend to accumulate over time and occupy valuable storage space. These include Adobe Reader cache, MRU and temp files, bash history, backup DS_Store, Thumbs.db and tmp files, gedit recent documents, Gnome run command and search history, LibreOffice, links2, and SQLite3 histories, system clipboard, desktop entry files, and recent documents. Finally, the script empties all trashes

## [Disclaimer](DISCLAIMER)
**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

## License

These files released under the [MIT License](LICENSE).
