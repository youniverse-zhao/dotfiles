#!/bin/bash

# Create custom folders
#
# ~/dotfiles/scripts/do/custom-dirs.sh

folder_names=("Pictures/Captures" "Movies/Recordings" "Developer" "Vault")

for folder_name in "${folder_names[@]}"
do
    path_to_folder=~/"$folder_name"
    if [ -d "$path_to_folder" ]; then
        echo "Folder $folder_name already exists, skip creation."
    else
        mkdir -p "$path_to_folder"
        echo "Folder $folder_name created"
    fi
done