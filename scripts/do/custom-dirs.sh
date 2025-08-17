#!/bin/bash

# Create custom folders
#
# ~/dotfiles/scripts/do/custom-dirs.sh

folder_names=("Captures" "Vault")

for folder_name in "${folder_names[@]}"
do
    if [ ! -d "$HOME/$folder_name" ]; then
        mkdir -p "$HOME/$folder_name"
        echo "Folder $folder_name has been created"
    else
        echo "Folder $folder_name is available"
    fi
done