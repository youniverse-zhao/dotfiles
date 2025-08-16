# Use stow to remove symbolic links for everything
#
# ~/dotfiles/undo/stow.sh

#!/bin/bash

cd "$HOME/dotfiles"; stow -D dots

project_root_dir="$HOME/dotfiles"
path_to_backup_dir="$project_root_dir/original"

items=("$path_to_backup_dir"/.*)
for item in ${items[@]} ; 
do
    filename=$(basename "$item")
    path_to_target_dot_file="$HOME/$filename"
    if [ -f "$path_to_target_dot_file" ] || [ -d "$path_to_target_dot_file" ]; then
        echo "There is an $filename in ~/, please check manually."
    else
        mv "$path_to_backup_dir/$filename" "$HOME/"
    fi
done