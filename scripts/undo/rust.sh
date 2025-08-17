#!/bin/bash

# Uninstall rust
# 
# ~/dotfiles/scripts/undo/rust.sh

if command -v rustup &> /dev/null ; then
    echo "rustup is available, uninstalling rust using rustup..."
    rustup self uninstall
else
    echo "rustup is not installed, nothing to do."
fi