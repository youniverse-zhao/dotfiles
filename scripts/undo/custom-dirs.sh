#!/bin/bash

# Remove custom folders
#
# ~/dotfiles/scripts/undo/custom-dirs.sh

folder_names=("Captures" "Vault")

for folder_name in "${folder_names[@]}"
do
    path_to_folder=~/"$folder_name"
    if [ -d "$path_to_folder" ]; then
        rmdir "$path_to_folder"
        echo "Folder $folder_name has been deleted"
    else
        echo "Folder $folder_name is not available"
    fi
done