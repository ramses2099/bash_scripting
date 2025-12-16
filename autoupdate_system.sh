#!/bin/bash

echo "Auto-Update System"

sudo apt update

clear

apt list --upgradable

clear

sudo apt upgrade -y
