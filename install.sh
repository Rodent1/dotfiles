#!/bin/bash

# Update packages
sudo apt update
sudo apt -y upgrade

# Install build-essential
sudo apt -y install build-essential

# Install chezmoi and init this repo
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply Rodent1
