#!/bin/bash

echo
echo "--------- 🦑 GIT ---------"
# Source file path
source_file=".gitconfig"

# Destination directory
destination_dir="$HOME"

# Destination file
destination_file="$destination_dir/.gitconfig"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "Source file not found: $source_file"
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Copy the content of the source file to the destination file
cp "$source_file" "$destination_file" && echo "✅ 'git' config file copied successfully!"
