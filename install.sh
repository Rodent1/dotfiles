#!/bin/bash

# Update packages
echo "Updating system..."
sudo apt update &> /dev/null
sudo apt -y upgrade &> /dev/null

# Install build-essential
echo "Installing build-essential..."
sudo apt -y install build-essential &> /dev/null

# Install Chezmoi
echo "Installing chezmoi..."
sh -c "$(curl -fsLS get.chezmoi.io)"

# Echo out chezmoi command
echo "Run the following command to apply dotfiles: chezmoi init --apply Rodent1"
