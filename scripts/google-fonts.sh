# Install all Google Fonts
#
# ~/dotfiles/scripts/install-google-fonts.sh

#!/bin/bash

GOOGLE_FONTS_DIR="google-fonts"
PATH_TO_GOOGLE_FONTS_DIR="$HOME/Library/Fonts/$GOOGLE_FONTS_DIR"

if [ -d $PATH_TO_GOOGLE_FONTS_DIR ]; then
    echo "Directory $GOOGLE_FONTS_DIR exists, update to the latest."
    cd $PATH_TO_GOOGLE_FONTS_DIR; git pull origin main;
else
    echo "Directory $GOOGLE_FONTS_DIR does not exists, creating..."
    git clone https://github.com/google/fonts.git $PATH_TO_GOOGLE_FONTS_DIR;
fi

