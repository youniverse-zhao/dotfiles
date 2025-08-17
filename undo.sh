#!/bin/bash

scripts=("stow" "brew" "rust" "google-fonts" "custom-dirs" "ssh")

for scirpt in "${scripts[@]}"
do
    echo "Cleaning up $scirpt.sh"
    path_to_script_file=~/"dotfiles/scripts/undo/$scirpt.sh"
    
    # set script to be executable
    chmod u+x "$path_to_script_file"

    # run it
    # shellcheck source=/dev/null
    source "$path_to_script_file"

    echo "Cleaning up $scirpt.sh Done"

    printf "\n\n\n"
    echo "--------------------------------------------------------------------------------"
done
