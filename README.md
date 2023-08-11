# 🎉🕺💃🎊 celebration
Discover how a properly formatted workspace can help you unleash your creative potential and bring your ideas to life with optimized configurations and scripts. Streamline your workflow, reduce errors, and create with ease by trying them out today.

---

## .bashrc Files
The `.bashrc` files in this project improve your experience and productivity when working in the BASH shell.
- [superuser](https://github.com/apple-fritter/celebration/blob/main/root/.bashrc)
- [regular user](https://github.com/apple-fritter/celebration/blob/main/user/.bashrc)

---

### Features
Notable features include a visually appealing divider displaying the time and date stamp between prompts, which enhances the shell's appearance and aids in debugging:

#### Source
```shell
PROMPT_COMMAND='separator'

# Prompt command to print a graphical divider with time and date stamp between shell prompts.
function separator() {
    local datestring=$(date +"%Y%m%d, %A")
    local timestring=$(date +"%H%M%S")

    local separator_length=80
    local date_length=${#datestring}
    local time_length=${#timestring}
    local space_length=$((separator_length - date_length - time_length - 8))

    local line_top="┌$(printf "%78s" | tr ' ' ' ')┐"
    local line_middle="│ $(printf " %s %${space_length}s %s " "$datestring" "" "$timestring") │"
    local line_bottom="└$(printf "%78s" | tr ' ' ' ')┘"

    printf "%s\n"
    printf "%s\n" "$line_top"
    printf "%s\n" "$line_middle"
    printf "%s\n" "$line_bottom"
}
```

#### Example Output
```shell

┌                                                                              ┐
│  20230615, Thursday                                                  132900  │
└                                                                              ┘

```

#### Separator Explained

The `separator()` function in the provided code generates a graphical divider with a time and date stamp between shell prompts.

- `datestring`: This variable stores the formatted current date and day of the week, using the format `%Y%m%d, %A`. For example, it might be "20230615, Thursday".

- `timestring`: This variable stores the formatted current time, using the format `%H%M%S`. For example, it might be "132900" for 1:29 PM.

- `separator_length`: This variable represents the desired length of the separator line. In the provided code, it is set to `80` characters, which is often the default width of a terminal window. You can adjust this value to fit your preferred design.

- `date_length`: This variable calculates the length of the `datestring` using `${#datestring}`. It represents the number of characters in the combined date and day of the week.

- `time_length`: This variable calculates the length of the `timestring` using `${#timestring}`. It represents the number of characters in the time.

- `space_length`: This variable calculates the number of spaces needed to fill the remaining space on the line. It is determined by subtracting the `date_length`, `time_length`, and `4` (for the spaces and vertical bars) from the `separator_length`.

- `line_top`: This variable constructs the top line of the separator, consisting of an upper left corner character, a line of spaces (` `) with a length equal to `space_length`, and an upper right corner character.

- `line_middle`: This variable constructs the middle line of the separator, containing a vertical bar (`|`), a space, the `datestring`, a dynamic number of spaces to align the `timestring`, the `timestring`, a space, and another vertical bar.

- `line_bottom`: This variable constructs the bottom line of the separator, similar to `line_top` but with a lower left corner character and a lower right corner character.

The `printf` statements are used to print each line of the separator.

Make sure to adjust the `separator_length` to your desired width, and feel free to modify the formatting to match your preferences.

---

### Prompt levels

PS1 and PS2 have been defined, enhancing the prompt's appearance.

```shell
PS1='\n\u@\h\n[\w]\n'
PS2='\n ▓▒░ '
```
PS1='\n\u@\h\n[\w]\n' sets the prompt to display the username , hostname, and current working directory, with a newline to form the prompt:
> GitHubFAN23@macbookpro<br>
> [~/Downloads]<br>
> Prompt text goes here_

PS2='\n ▓▒░ ' sets the secondary prompt to show a pattern of block characters. This prompt level provides visual indication that more input is expected.

---

The `.bashrc` files also comprise various settings and aliases that streamline frequently used commands, making them more efficient while the history command and history ignoring commands' format have been tailored to enhance productivity, and they includes aliases for referencing system management shell scripts also provided in this repository.

##### Establish the time format for long-running commands
```shell
export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
```

##### Provide aliases for disk usage and space
```shell
alias du='du -kh'
alias df='df -kTh'
```

##### Show files with color and long format
```shell
alias ls='ls -aclX --color'
```

##### Create an alias to notify users when a long-running command completes
```shell
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
```
##### Specify default wget arguments to appear as a web browser request, supporting download resumes
```shell
alias wget='wget -c --user-agent="Mozilla/5.0 (X11; Ubuntu 23.04; rv:109.0) Gecko/20100101 Firefox/109.0"'
```

---

## Scripts:
### Superuser scripts:
#### [cleaning_routine.admin.sh](https://github.com/apple-fritter/celebration/blob/main/root/cleaning_routine.admin.sh)
Executes a sequence of cleanup tasks to optimize system performance. It scans for all schema files that are not utilized by any installed applications and removes them to free up space.

**THE SCHEMA CLEANER HAS BEEN DISABLED** until it is reliable.

```
┌─ Start Script
│
===============[BEGIN BROKEN SECTION]
├─ Check if the schema directory exists
│   ├─ Directory doesn't exist
│   │       └─ Display "Directory <schema_dir> not found." and exit
│   └─ Continue to next step
│
├─ Find unused schema files
│   ├─ Find all schema files in <schema_dir> that are not referenced by installed applications, utilizing gsettings
│   └─ Store list of unused schema files in UNUSED_SCHEMAS
│
├─ Remove unused schema files
│   ├─ Loop for each schema in UNUSED_SCHEMAS
│   │       ├─ Remove the schema file
│   │       └─ Display "Removed <schema_file>"
│   └─ Compile the remaining schema files
│
├─ Compile schemas
│   ├─ Compile the remaining schema files in <schema_dir> using glib-compile-schemas command
│   └─ Binary cache files for the schemas are generated
=================[END BROKEN SECTION]
├─ Clean up
│   ├─ bash history
│   ├─ backup files
│   ├─ DS_Store files
│   ├─ Thumbs.db files
│   ├─ tmp files
│   ├─ Java cache
│   ├─ SQLite3 history
│   ├─ system cache
│   ├─ rotated logs
│   ├─ trash
│   ├─ thumbnail cache
│   └─ X11 debug logs
│
├─ Remove packages that are no longer needed
├─ Clear the local package cache
│
└─ End Script
```

#### [nodupes.sh](https://github.com/apple-fritter/celebration/blob/main/root/nodupes.sh)
Sorts a text file alphabetically and eliminates duplicated lines, saving time and effort while ensuring data accuracy and integrity. 

```
┌─ Start Script
│
├─ Sort the contents of file <input_file>
│     └─ Store the sorted output in a temporary file <input_file>.tmp
│
├─ Remove duplicate lines from the sorted output
│     └─ Store the unique lines in the temporary file <input_file>.tmp
│
├─ Rename the temporary file <input_file>.tmp to <input_file>
│
└─ End Script
```

#### [update_installed_packages.sh](https://github.com/apple-fritter/celebration/blob/main/root/update_installed_packages.sh)
Automates the process of updating all installed software packages on your system. By running the script from a root prompt, it will automatically search for and install any available updates. This saves time and effort while also keeping your system secure and up-to-date.
```
┌─ Start Script
│
├─ Run apt-get update command
│     └─ Automatically answer "yes" to any prompts
│
├─ Run apt-get dist-upgrade command
│     └─ Automatically answer "yes" to any prompts
│
└─ End Script
```

#### [unclefill.sh](https://github.com/apple-fritter/celebration/blob/main/root/unclefill.sh)
Quickly fills a target file with a specified input pattern, making it useful for generating large amounts of sample data for testing or demonstration purposes.
```
┌─ Start Script
│
├─ Define input_file and output_file variables from command line arguments
│     └─ Assign the value of the first command line argument to input_file
│     └─ Assign the value of the second command line argument to output_file
│
├─ Check if either input_file or output_file is empty
│     ├─ If either file is empty
│     │     └─ Prompt user for input file path
│     │     └─ Prompt user for output file path
│     └─ If both input_file and output_file are provided
│           └─ Check if the number of arguments is greater than 2
│                 └─ Display an error message to stderr
│                 └─ Exit the script with status code 1
│
├─ Use a while loop to continuously append input_file contents to output_file
│     └─ Append the contents of input_file to output_file
│
└─ End Script
```

> The while loop continuously appends the contents of the input file to the output file indefinitely, which may result in an infinite loop. You may want to consider adding a condition or an exit condition within the loop to ensure it doesn't run indefinitely.

---

### Regular User Scripts:
#### [cleaning_routine.sh](https://github.com/apple-fritter/celebration/blob/main/user/cleaning_routine.sh)
Optimizes system performance by rebuilding the Mozilla Firefox configuration from scratch using a backup skeleton, if available. The script also cleans up various files and directories that tend to accumulate over time and occupy valuable storage space. 
```
┌─ Start Script
│
├─ Set working directory to the user's home
│
├─ Remove
│  ├─ .wget-hsts
│  ├─ .cache/ directory
│  ├─ .android/ directory
│  ├─ .mozilla/ directory
│  ├─ .bash_history
│  └─ .sudo_as_admin_successful
│
├─ Rebuild Mozilla Firefox configuration from backup skeleton using p7zip
│
├─ Clean up
│  ├─ Adobe Reader cache
│  ├─ Adobe Reader MRU
│  ├─ Adobe Reader tmp files
│  ├─ bash history
│  ├─ backup files
│  ├─ DS_Store files
│  ├─ Thumbs.db files
│  ├─ tmp files
│  ├─ gedit recent documents
│  ├─ Gnome run command history
│  ├─ Gnome search history
│  ├─ LibreOffice history
│  ├─ links2 history
│  ├─ SQLite3 history
│  ├─ system clipboard
│  ├─ desktop entry files
│  ├─ recent documents
│  └─ trash
│
└─ End Script
```

### Common Scripts
#### d0s2unix
This script is a bash shell script designed to convert text files from DOS/Windows line endings (CRLF - Carriage Return Line Feed) to Unix line endings (LF - Line Feed). When you run this script with a folder path as an argument or without any argument, it will convert all the text files in that folder and its subfolders from DOS/Windows line endings to Unix line endings using the dos2unix command. This is useful when you have files that were created or edited on Windows systems and need to be used on Unix-based systems.

The run_dos2unix_recursive() function is defined to handle the recursive conversion of files in subfolders. It takes one argument, which is the folder path to be processed.

Inside the run_dos2unix_recursive() function:
- It loops over all files and folders within the provided folder path using the for loop.
- If the current item in the loop is a subfolder (directory), the function calls itself (run_dos2unix_recursive) recursively to process files within that subfolder.
- If the current item is a regular file, it uses the dos2unix command to convert the file's line endings from DOS/Windows format to Unix format.

The main() function is defined to handle the execution of the script. It checks if any command-line arguments are provided (using $# -eq 0). If no arguments are provided, it sets the folder_path variable to the current working directory using $(pwd). If an argument is provided, it uses that as the folder_path. Finally, the main() function is called with the provided command-line arguments (main "$@").

```
┌─ Start Script
│
├─ Check if command-line arguments are provided
│     ├─ No arguments provided:
│     │  │
│     │  └─ Set folder_path to the current working directory ($(pwd))
│     │
│     └─ Arguments provided
│        └─ Set folder_path to the provided argument
│
├─ Call the run_dos2unix_recursive() function with folder_path
│
└─ End Script
```

---

## [Disclaimer](DISCLAIMER)
**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

---

## License

These files released under the [MIT License](LICENSE).
