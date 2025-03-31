#!/bin/bash

# List of required tools
tools=("python3" "python3-pip" "pipx" "makeself" "sqlite3")

# Check for missing tools
missing=()
for tool in "${tools[@]}"; do
    if ! command -v $tool &> /dev/null; then
        missing+=("$tool")
    fi
done

# Install missing tools
if [ ${#missing[@]} -ne 0 ]; then
    echo "The following tools are missing: ${missing[*]}"
    read -p "Do you want to install them? (y/n) " choice
    if [[ "$choice" == "y" ]]; then
        sudo apt update
        sudo apt install -y ${missing[*]}
    else
        echo "Installation skipped. Some features may not work."
    fi
else
    echo "All required tools are installed."
fi

# Create additional repository files
echo "# Application Template

This repository contains scripts and setup instructions for a Python-based application." > README.md

echo "# Project Setup Tasks

1. Create a new GitHub repository.
2. Clone the repository locally.
3. Make the 'main' branch protected.
4. Set up a virtual environment.
5. Install required dependencies.
6. Configure and test deployment.
7. Connect to the virtual machine via SSH in VSCode." > TASK.md

echo "# Contributors

- Your Name <your.email@example.com>" > CONTRIBUTORS.md

