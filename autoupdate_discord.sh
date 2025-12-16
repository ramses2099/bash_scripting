#!/bin/bash

#bash script for update discord

echo "File update: $1"

FILE="$1"
DEST="/tmp/${FILE}"

#echo "$DEST"

if [[ -f "$DEST" ]]; then
    echo "File Exists in the directory: ${DEST}"
else
    mv "*.deb" $DEST
fi

sudo apt install $DEST -y