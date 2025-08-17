#!/bin/bash

# Remove custom folders
#
# ~/dotfiles/scripts/undo/custom-dirs.sh

folder_names=("Captures" "Vault")

for folder_name in "${folder_names[@]}"
do
    if [ -d "$HOME/$folder_name" ]; then
        rmdir "$HOME/$folder_name"
        echo "Folder $folder_name has been deleted"
    else
        echo "Folder $folder_name is not available"
    fi
done