#!/bin/bash

# Switch to zsh
if [ -z "$ZSH_NAME" ]; then
    echo
    echo "--------- ⚙️ OH-MY-ZSH ---------"
    echo "Switching to zsh..."
    exec zsh "$0" "$@"
fi

# Source file path
source_file=".zshrc"

# Destination directory
destination_dir="$HOME"

# Destination file
destination_file="$destination_dir/.zshrc"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "'.zshrc' source file not found: $source_file"
    exit 1
fi

# Copy the content of the source file to the destination file
cp "$source_file" "$destination_file" && echo "✅ 'oh-my-zsh' config file copied successfully!"

# Source ~/.zshrc
source ~/.zshrc
