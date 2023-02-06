#!/bin/bash

# Define the name of the software package to be installed
PACKAGE_NAME=python3

# Check if the package is already installed
if dpkg -s $PACKAGE_NAME &> /dev/null; then
  echo "$PACKAGE_NAME is already installed."
else
  # Update the package list
  sudo apt-get update

  # Install the package
  sudo apt-get install -y $PACKAGE_NAME

  # Check if the installation was successful
  if dpkg -s $PACKAGE_NAME &> /dev/null; then
    echo "$PACKAGE_NAME has been installed successfully."
  else
    echo "An error occurred while installing $PACKAGE_NAME."
  fi
fi
