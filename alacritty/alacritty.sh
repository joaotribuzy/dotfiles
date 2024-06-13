#!/bin/bash

echo
echo "--------- 🏭 ALACRITY ---------"
# Source file path
source_file="alacritty.toml"

# Destination directory
destination_dir="$HOME/.config/alacritty"

# Destination file
destination_file="$destination_dir/alacritty.toml"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "Source file not found: $source_file"
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Copy the content of the source file to the destination file
cp "$source_file" "$destination_file" && echo "✅ 'Alacritty' config file copied successfully!"
