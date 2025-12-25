#!/bin/bash


# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color (reset)

echo -e "${GREEN}Staring Auto-Update System${NC}"

sudo apt update

clear

apt list --upgradable

clear

sudo apt upgrade -y

clear

echo -e "${GREEN}System update successfully${NC}"
