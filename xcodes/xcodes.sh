#!/bin/bash

echo
echo "--------- 🔨 XCODE ---------"
echo

# Find the path to any application that has "Xcode" in its name
xcode_app_path=~/Applications/Xcode.app

# Make the installed Xcode active
echo "Making Xcode active..."
xcodes select "$xcode_app_path"

echo "Xcode latest version installation and setup complete."
