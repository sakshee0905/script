#!/bin/bash

echo "Installing $1"

sudo apt-get update >/dev/null

sudo apt-get install $1 -y

echo "Installation complete"
