#!/bin/bash

# Use stow to remove symbolic links for everything
#
# ~/dotfiles/scripts/undo/stow.sh

project_root_dir=~/"dotfiles"
path_to_backup_dir="$project_root_dir/original"

cd "$project_root_dir" || exit 1; stow -D dots

items=("$path_to_backup_dir"/.*)
for item in "${items[@]}" ; 
do
    filename=$(basename "$item")

    if [ "$filename" != "." ] && [ "$filename" != ".." ] && [ "$filename" != ".DS_Store" ]; then
        path_to_target_dot_file=~/"$filename"
        if [ -f "$path_to_target_dot_file" ] || [ -d "$path_to_target_dot_file" ]; then
            echo "There is an $filename in ~/, please check manually."
        else
            mv "$path_to_backup_dir/$filename" ~/
        fi
    fi
done