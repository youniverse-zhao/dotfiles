#!/bin/bash

SCRIPTS=("stow" "brew" "rust" "google-fonts" "custom-dirs" "ssh")

for scirpt in ${SCRIPTS[@]}
do
    echo "Cleaning up $scirpt.sh"
    path_to_script_file="$HOME/dotfiles/undo/$scirpt.sh"
    
    # set script to be executable
    chmod u+x "$path_to_script_file"

    # run it
    source "$path_to_script_file"

    echo "$scirpt.sh Done"
done
