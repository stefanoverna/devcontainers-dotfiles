#!/bin/bash

find "$(pwd)" -type f -name "*.symlink" -exec sh -c 'ln -fs "$1" "$HOME/.$(basename "$1" .symlink)"' _ {} \;

source ~/.bashrc