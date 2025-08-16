# Use stow to create symbolic links for everything
#
# ~/dotfiles/do/stow.sh

#!/bin/bash

brew install stow

# Enable nullglob to ensure that if no files match the pattern,
# the glob expands to nothing instead of the pattern itself.
shopt -s nullglob

project_root_dir="$HOME/dotfiles"

# Create ./original to backup existing dot files
path_to_backup_dir="$project_root_dir/original"
mkdir -p "$path_to_backup_dir"

items=("$project_root_dir"/.*)
for item in ${items[@]} ; 
do
    filename=$(basename "$item")
    path_to_existing_dot_file="$HOME/$filename"
    if [ -f "$path_to_existing_dot_file" ] || [ -d "$path_to_existing_dot_file" ]; then
        mv "$path_to_existing_dot_file" "$path_to_backup_dir/"
        echo "$filename has been backup."
    fi
done

cd "$project_root_dir"; stow dots