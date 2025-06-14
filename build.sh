#!/bin/bash

# Build script for Hello GUI Fyne application
# This script sets up the correct compiler environment and builds the application

echo "Building Hello GUI application..."

# Set the PATH to include MinGW from MSYS2
export PATH="/cygdrive/c/apps/msys64/mingw64/bin:$PATH"

# Set the C compiler to use MinGW GCC
export CC=gcc

# Build the application
go build -ldflags "-H windowsgui" -o hello-gui-go.exe main.go

STATUS="$?"

# Check if the build was successful
if [[ "$STATUS" -eq 0 ]]
then
	echo "Build successful!  Created hello-gui-go.exe."
	exit 0
else
	echo "Build failed: exit status = $STATUS!"
	exit 1
fi
