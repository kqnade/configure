#!/bin/bash
# Check if Fish shell is installed
if ! command -v fish &>/dev/null; then
  # Install Fish shell
  echo "Fish shell not found. Installing..."
  sudo apt-get update
  sudo apt-get install fish -y
fi
# Set Fish shell as the default shell
echo "Setting Fish shell as the default shell..."
chsh -s $(which fish)

# Print the current shell to verify the change
echo "Current shell: $SHELL"

mkdir -p ~/.conf 
mkdir -p ~/.tmp && mkdir -p ~/.tmp/configure
cd ~/.tmp/configure
mkdir -p ~/.config

# Download Starship
curl -sS https://starship.rs/install.sh | sh
git clone https://github.com/kqnade/configure ~/.conf
ln -s ~/.conf/starship.toml ~/.config

# Brew install

