#!/bin/bash

# Create custom folders
#
# ~/dotfiles/scripts/do/custom-dirs.sh

folder_names=("Captures" "Vault")

for folder_name in "${folder_names[@]}"
do
    path_to_folder=~/"$folder_name"
    if [ ! -d "$path_to_folder" ]; then
        mkdir -p "$path_to_folder"
        echo "Folder $folder_name has been created"
    else
        echo "Folder $folder_name is available"
    fi
done