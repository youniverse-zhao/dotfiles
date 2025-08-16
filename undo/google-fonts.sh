# Uninstall all Google Fonts
#
# ~/dotfiles/undo/google-fonts.sh

#!/bin/bash

GOOGLE_FONTS_DIR="google-fonts"
PATH_TO_GOOGLE_FONTS_DIR="$HOME/Library/Fonts/$GOOGLE_FONTS_DIR"

if [ -d $PATH_TO_GOOGLE_FONTS_DIR ]; then
    echo "Directory $GOOGLE_FONTS_DIR exists, removing..."
    rm -rf $PATH_TO_GOOGLE_FONTS_DIR 
else
    echo "Directory $GOOGLE_FONTS_DIR does not exists, nothing to do."
fi

