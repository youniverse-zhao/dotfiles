#!/bin/bash

SCRIPTS=("brew" "rust" "google-fonts" "custom-dirs" "ssh" "stow")

for scirpt in "${SCRIPTS[@]}"
do
    echo "$scirpt.sh Applying"
    path_to_script_file="$HOME/dotfiles/scripts/do/$scirpt.sh"
    
    # set script to be executable
    chmod u+x "$path_to_script_file"

    # run it
    # shellcheck source=/dev/null
    source "$path_to_script_file"

    echo "$scirpt.sh Done"
done
