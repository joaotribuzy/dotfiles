#!/bin/bash

echo
echo "--------- 🦑 GIT ---------"
# Source file path
gitconfig_file=".gitconfig"
gitconfig_personal_file=".gitconfig.personal"

# Destination directory
destination_dir="$HOME"

# Destination file
destination_gitconfig_file="$destination_dir/.gitconfig"
destination_personal_gitconfig_file="$destination_dir/.gitconfig.personal"

# Check if the .gitconfig exists
if [ ! -f "$gitconfig_file" ]; then
    echo "Source file not found: $gitconfig_file"
    exit 1
fi

# Check if the .gitconfig.personal exists
if [ ! -f "$gitconfig_personal_file" ]; then
    echo "Source file not found: $gitconfig_personal_file"
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Copy the content of the source file to the destination file
cp "$gitconfig_file" "$destination_gitconfig_file" && echo "✅ 'gitconfig' config file copied successfully!"
cp "$gitconfig_personal_file" "$destination_personal_gitconfig_file" && echo "✅ 'gitconfig.personal' config file copied successfully!"
