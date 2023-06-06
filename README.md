# celebration
Discover how a properly formatted workspace can help you unleash your creative potential and bring your ideas to life with optimized configurations and scripts. Streamline your workflow, reduce errors, and create with ease by trying them out today.

---

## .bashrc Files
The `.bashrc` files in this project improve your experience and productivity when working in the BASH shell.

Notable features include a visually appealing divider displaying the time and date stamp between prompts, which enhances the shell's appearance and aids in debugging.

Prompt levels PS1 and PS2 have been defined, enhancing the prompt's appearance.

The `.bashrc` files also comprise various settings and aliases that streamline frequently used commands, making them more efficient while the history command and history ignoring commands' format have been tailored to enhance productivity. For instance, they
* Establish the time format for long-running commands
* Provide aliases for disk usage and space
* Show files with color and long format
* Create an alias to notify users when a long-running command completes
* Specify default wget arguments to appear as a web browser request
* Include aliases for referencing system management shell scripts.

---

## Scripts:
### Superuser scripts:
#### [cleaning_routine.admin.sh](https://github.com/apple-fritter/celebration/blob/main/root/cleaning_routine.admin.sh)
`cleaning_routine.admin.sh` script executes a sequence of cleanup tasks to optimize system performance. It scans for all schema files that are not utilized by any installed applications and removes them to free up space.

```
Start Script
|
├─ Clean up home directory
|  ├─ Remove .cache/ directory
|  └─ Remove .wget-hsts
|
├─ Check if the schema directory exists
|  ├─ Directory doesn't exist
|  |     └─ Display "Directory <schema_dir> not found." and exit
|  └─ Continue to next step
|
├─ Find unused schema files
|  ├─ Find all schema files in <schema_dir> that don't contain "gettext"
|  └─ Store list of unused schema files in UNUSED_SCHEMAS
|
├─ Remove unused schema files
|  ├─ Loop for each schema in UNUSED_SCHEMAS
|  |     ├─ Remove the schema file
|  |     └─ Display "Removed <schema_file>"
|  └─ Compile the remaining schema files
|
├─ Clean up
|  ├─ bash history
|  ├─ backup files
|  ├─ DS_Store files
|  ├─ Thumbs.db files
|  ├─ tmp files
|  ├─ Java cache
|  ├─ SQLite3 history
|  ├─ system cache
|  ├─ rotated logs
|  ├─ trash
|  ├─ thumbnail cache
|  └─ X11 debug logs
|
├─ Remove packages that are no longer needed
├─ Clear the local package cache
|
End Script
```

#### [nodupes.sh](https://github.com/apple-fritter/celebration/blob/main/root/nodupes.sh)
`nodupes.sh` sorts a text file alphabetically and eliminates duplicated lines, saving time and effort while ensuring data accuracy and integrity. 

```
Start Script
|
├─ Sort the contents of file <input_file>
|     └─ Store the sorted output in a temporary file <input_file>.tmp
|
├─ Remove duplicate lines from the sorted output
|     └─ Store the unique lines in the temporary file <input_file>.tmp
|
├─ Rename the temporary file <input_file>.tmp to <input_file>
|
End Script
```

#### [update_installed_packages.sh](https://github.com/apple-fritter/celebration/blob/main/root/update_installed_packages.sh)
`update_installed_packages.sh` automates the process of updating all installed software packages on your system. By running the script from a root prompt, it will automatically search for and install any available updates. This saves time and effort while also keeping your system secure and up-to-date.
```
Start Script
|
├─ Run apt-get update command
|     └─ Automatically answer "yes" to any prompts
|
├─ Run apt-get dist-upgrade command
|     └─ Automatically answer "yes" to any prompts
|
End Script
```

#### [unclefill.sh](https://github.com/apple-fritter/celebration/blob/main/root/unclefill.sh)
`unclefill.sh` quickly fills a target file with a specified input pattern, making it useful for generating large amounts of sample data for testing or demonstration purposes.
```
Start Script
|
├─ Define input_file and output_file variables from command line arguments
|     └─ Assign the value of the first command line argument to input_file
|     └─ Assign the value of the second command line argument to output_file
|
├─ Check if either input_file or output_file is empty
|     ├─ If either file is empty
|     |     └─ Prompt user for input file path
|     |     └─ Prompt user for output file path
|     └─ If both input_file and output_file are provided
|           └─ Check if the number of arguments is greater than 2
|                 └─ Display an error message to stderr
|                 └─ Exit the script with status code 1
|
├─ Use a while loop to continuously append input_file contents to output_file
|     └─ Append the contents of input_file to output_file
|
End Script
```

---

### Regular User Scripts:
#### [cleaning_routine.sh](https://github.com/apple-fritter/celebration/blob/main/user/cleaning_routine.sh)
`cleaning_routine.sh` optimizes system performance by rebuilding the Mozilla Firefox configuration from scratch using a backup skeleton, if available. The script also cleans up various files and directories that tend to accumulate over time and occupy valuable storage space. 
```
Start Script
|
├─ Set working directory to the user's home
|
├─ Remove
|  ├─ .wget-hsts
|  ├─ .cache/ directory
|  ├─ .android/ directory
|  ├─ .mozilla/ directory
|  ├─ .bash_history
|  └─ .sudo_as_admin_successful
|
├─ Rebuild Mozilla Firefox configuration from backup skeleton using p7zip
|
├─ Clean up
|  ├─ Adobe Reader cache
|  ├─ Adobe Reader MRU
|  ├─ Adobe Reader tmp files
|  ├─ bash history
|  ├─ backup files
|  ├─ DS_Store files
|  ├─ Thumbs.db files
|  ├─ tmp files
|  ├─ gedit recent documents
|  ├─ Gnome run command history
|  ├─ Gnome search history
|  ├─ LibreOffice history
|  ├─ links2 history
|  ├─ SQLite3 history
|  ├─ system clipboard
|  ├─ desktop entry files
|  ├─ recent documents
|  └─ trash
|
End Script
```

## [Disclaimer](DISCLAIMER)
**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

## License

These files released under the [MIT License](LICENSE).
