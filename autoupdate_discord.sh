#!/bin/bash

#bash script for update discord

# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color (reset)

echo -e "${GREEN}Update Discord${NC}"

SOURCE_DIR="~/Dowloads"
DEST_DIR="/tmp"

# Check if any .deb files exist before copying
if ls "$SOURCE_DIR"/*.deb >/dev/null 2>&1; then
    cp "$SOURCE_DIR"/*.deb "$DEST_DIR"
    echo -e "${GREEN}Success: All .deb files copied to $DEST_DIR${NC}"
else
    echo -e "${RED}Error: No .deb files found in $SOURCE_DIR${NC}"
fi

#This finds the first .deb file in the current directory
FILE_DEB=$(sudo ls /tmp/*.deb | head -n 1)
echo -e "${GREEN}File Name:${FILE_DEB}${NC}"

if [[ -f "/tmp/$FILE_DEB" ]]; then
    sudo apt install $DEST -y
else
    echo -e "${RED}File dosen't exits in the directory: ${FILE_DEB}${NC}"    
fi
