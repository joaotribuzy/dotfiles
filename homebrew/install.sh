#!/bin/bash

if [ -f Brewfile ]; then
    echo "Running brew bundle install..."
    brew bundle install
else
    echo "Brewfile not found. Make sure the Brewfile is in the current directory."
fi
