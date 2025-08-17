#!/bin/bash

scripts=("stow" "brew" "rust" "google-fonts" "custom-dirs" "ssh")

for scirpt in "${scripts[@]}"
do
    echo "Applying $scirpt.sh"
    path_to_script_file=~/"dotfiles/scripts/do/$scirpt.sh"
    
    # set script to be executable
    chmod u+x "$path_to_script_file"

    # run it
    # shellcheck source=/dev/null
    source "$path_to_script_file"

    echo "Applying $scirpt.sh Done"

    printf "\n\n\n"
    echo "--------------------------------------------------------------------------------"
done
