#!/bin/bash

# Define the GitHub repository URL
REPO_URL="https://github.com/nawinto99/getera-data-store.git"

# Get the current working directory as the root of the project
ROOT_DIR=$(pwd)

# Define the local directory path where you want to clone the repository
LOCAL_DIR="$ROOT_DIR/data"

# Define a temporary directory under "data"
TMP_DIR="$LOCAL_DIR/tmp"

# Check if the directory already exists
if [ -d "$LOCAL_DIR" ]; then
  echo "Removing existing directory: $LOCAL_DIR"
  rm -rf "$LOCAL_DIR"
fi

# Clone the repository to the temporary directory with a shallow clone (depth 1)
git clone --depth 1 "$REPO_URL" "$TMP_DIR"

# Move the contents of the "cases" folder to "cases" under "data"
mv "$TMP_DIR/cases" "$LOCAL_DIR/cases"

# Remove the temporary directory
rm -rf "$TMP_DIR"
