#!/bin/bash

find . -type f -name "*.symlink" -exec sh -c 'ln -s "$1" "$HOME/.$(basename "$1" .symlink)"' _ {} \;
