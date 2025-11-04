#!/bin/bash

# Update Homebrew
echo "Updating Homebrew..."
brew update
brew upgrade

source ~/miniconda3/etc/profile.d/conda.sh

# Get a list of all conda environments
echo "Updating all conda environments..."
conda env list | awk '{print $1}' | grep -v "^#" | while read env; do
	if [[ "$env" != "" ]]; then 
		echo "Updating environment: $env"
		conda activate "$env"
		conda update --all -y
		conda deactivate
	fi
done

echo "Update completed."
