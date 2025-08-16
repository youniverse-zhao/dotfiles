# Remove custom folders
#
# ~/dotfiles/undo/custom-dirs.sh

#!/bin/bash

folder_names=("Captures" "Vault" "Notes")

for folder_name in ${folder_names[@]}
do
    if [ -d "$HOME/$folder_name" ]; then
        rmdir -p "$HOME/$folder_name"
        echo "Folder $folder_name has been deleted"
    else
        echo "Folder $folder_name is not available"
    fi
done