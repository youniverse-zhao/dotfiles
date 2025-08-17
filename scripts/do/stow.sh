#!/bin/bash

# Use stow to create symbolic links for everything
#
# ~/dotfiles/scripts/do/stow.sh

brew install stow

# Enable nullglob to ensure that if no files match the pattern,
# the glob expands to nothing instead of the pattern itself.
shopt -s nullglob

path_to_project_dir=~/"dotfiles"
path_to_project_dots_dir="$path_to_project_dir/dots"

# Create ./original to backup existing dot files
path_to_backup_dir="$path_to_project_dir/original"
mkdir -p "$path_to_backup_dir"

items=("$path_to_project_dots_dir"/.*)
for item in "${items[@]}" ; 
do
    filename=$(basename "$item")

    if [ "$filename" != "." ] && [ "$filename" != ".." ] && [ "$filename" != ".DS_Store" ]; then
        path_to_existing_dot_file=~/"$filename"
        if [ -f "$path_to_existing_dot_file" ] || [ -d "$path_to_existing_dot_file" ]; then
            mv "$path_to_existing_dot_file" "$path_to_backup_dir/"
            echo "$filename has been backup."
        fi
    fi
done

cd "$path_to_project_dir" || exit 1; stow dots