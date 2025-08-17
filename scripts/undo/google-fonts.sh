#!/bin/bash

# Uninstall all Google Fonts
#
# ~/dotfiles/scripts/undo/google-fonts.sh

google_fonts_dir_name="google-fonts"
path_to_google_fonts_dir=~/"Library/Fonts/$google_fonts_dir_name"

if [ -d "$path_to_google_fonts_dir" ]; then
    echo "Directory $google_fonts_dir_name exists, removing..."
    rm -rf "$path_to_google_fonts_dir" 
else
    echo "Directory $google_fonts_dir_name does not exists, nothing to do."
fi

