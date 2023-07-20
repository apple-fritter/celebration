#!/bin/bash

run_dos2unix_recursive() {
    local folder_path=$1

    for file in "$folder_path"/*; do
        if [ -d "$file" ]; then
            run_dos2unix_recursive "$file"  # Recursively process subfolders
        elif [ -f "$file" ]; then
            dos2unix "$file"  # Run dos2unix on individual files
        fi
    done
}

main() {
    if [ $# -eq 0 ]; then
        folder_path=$(pwd)  # Use the current working directory as the folder path
    else
        folder_path=$1  # Use the provided argument as the folder path
    fi

    run_dos2unix_recursive "$folder_path"
}

main "$@"

