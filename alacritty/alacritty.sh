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

# Change Icon

# Path to the application (.app)
app_path="/Applications/Alacritty.app"

# Path to the new icon (.icns)
icon_path="$(dirname "$0")/alacritty.icns"

# Check if the application exists
if [ ! -d "$app_path" ]; then
    echo "👎 App not found: $app_path"
    exit 1
fi

# Check if the icon file exists
if [ ! -f "$icon_path" ]; then
    echo "👎 Icon file not found: $icon_path"
    exit 1
fi

# Path to the Info.plist inside the app bundle
plist_path="$app_path/Contents/Info.plist"

# Path to the current icon inside the app bundle
app_icon_path="$app_path/Contents/Resources/alacritty.icns"

# Replace the app's icon
cp "$icon_path" "$app_icon_path"

# Update Finder icons to reflect the change
touch "$app_path"

echo "✅ 'Alacritty' icon updated successfully."
