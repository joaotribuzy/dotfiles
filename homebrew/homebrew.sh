#!/bin/bash

# Check if Homebrew is installed
check_homebrew_installed() {
    if command -v brew >/dev/null 2>&1; then
        echo "👍 Homebrew is already installed."
        return 0
    else
        echo "👎 Homebrew is not installed."
        return 1
    fi
}

# Install Homebrew
install_homebrew() {
    echo "🚀 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Install Homebrew Bundle
install_brew_bundle() {
    echo "🚀 Installing Homebrew Bundle..."
    brew tap homebrew/bundle
}

# Install Brewfile content
install_brewfile_through_bundle() {
    if [ -f Brewfile ]; then
        echo "🚀 Running brew bundle install..."
        brew bundle install
    else
        echo "😩 Brewfile not found. Make sure the Brewfile is in the current directory."
    fi
}

# Main script
echo "--------- 🍺 HOMEBREW ---------"
check_homebrew_installed
if [ $? -ne 0 ]; then
    install_homebrew
    if [ $? -eq 0 ]; then
        echo "✅ Homebrew installed successfully."
        install_brew_bundle
        install_brewfile_through_bundle
    else
        echo "😩 Failed to install Homebrew."
        exit 1
    fi
else
    echo "👍 No installation needed."
    install_brew_bundle
    install_brewfile_through_bundle
fi
