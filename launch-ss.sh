#!/bin/bash

# Get the path to the gemini executable from NVM
# This assumes NVM is installed and the gemini package is installed globally in the default node version.
GEMINI_PATH=$(nvm which default | xargs dirname)/gemini

if [ ! -f "$GEMINI_PATH" ]; then
  # Fallback: check if it's in the PATH
  GEMINI_PATH=$(which gemini)
fi

if [ -z "$GEMINI_PATH" ]; then
  echo "Error: 'gemini' CLI not found. Please ensure it's installed via npm."
  exit 1
fi

# Execute the gemini CLI with all provided arguments
# We use 'exec' to replace the shell process with the gemini process.
exec "$GEMINI_PATH" "$@"
