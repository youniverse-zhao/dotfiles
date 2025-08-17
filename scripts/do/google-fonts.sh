#!/bin/bash

# Install all Google Fonts
#
# ~/dotfiles/scripts/do/google-fonts.sh

google_fonts_dir_name="google-fonts"
path_to_google_fonts_dir=~/"Library/Fonts/$google_fonts_dir_name"

if [ -d "$path_to_google_fonts_dir" ]; then
    echo "Directory $google_fonts_dir_name exists, update to the latest."
    cd "$path_to_google_fonts_dir" || exit 1; git pull origin main;
else
    echo "Directory $google_fonts_dir_name does not exists, creating..."
    git clone https://github.com/google/fonts.git "$path_to_google_fonts_dir";
fi

