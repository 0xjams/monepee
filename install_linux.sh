#!/bin/bash

# Go to the desired directory (optional)
cd /usr/local

# Install chezmoi
sudo sh -c "$(curl -fsLS get.chezmoi.io)"

# Debug output to see what's being received as the branch
echo "Received branch parameter: '$1'"

# Conditional application of branch
if [ -n "$1" ]; then
    echo "Running with the branch: $1"
    chezmoi init --apply --branch "$1" https://github.com/0xjams/monepee
else
    echo "Running without a specific branch"
    chezmoi init --apply https://github.com/0xjams/monepee
fi
