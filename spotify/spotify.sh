#!/bin/bash

echo
echo "--------- 🎧 SPOTIFY ---------"
echo

# Path to the application (.app)
app_path="/Applications/Spotify.app"

# Path to the new icon (.icns)
icon_path="$(dirname "$0")/spotify.icns"

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
app_icon_path="$app_path/Contents/Resources/Icon.icns"

# Replace the app's icon
cp "$icon_path" "$app_icon_path"

# Update Finder icons to reflect the change
touch "$app_path"

echo "✅ 'Spotify' icon updated successfully."
