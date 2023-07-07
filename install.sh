#!/bin/bash

# Update packages
echo "Updating system..."
sudo apt update &> /dev/null
sudo apt -y upgrade &> /dev/null

# Install build-essential
echo "Installing build-essential..."
sudo apt -y install build-essential &> /dev/null

# Install fish
echo "Installing fish shell..."
sudo apt -y install fish &> /dev/null
chsh -s /usr/bin/fish
fish

# Install chezmoi and init this repo
echo "Installing chezmoi..."
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Rodent1
