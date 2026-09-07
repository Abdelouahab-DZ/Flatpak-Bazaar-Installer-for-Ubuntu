#!/usr/bin/env bash

set -e

# ==========================================================
# Ubuntu Flatpak + Bazaar Installer
# ==========================================================

RED='\033[31m'
GREEN='\033[32m'
CYAN='\033[36m'
YELLOW='\033[33m'
RESET='\033[0m'

echo
echo -e "${CYAN}==========================================${RESET}"
echo -e "${CYAN}    Flatpak + Bazaar Installer for Ubuntu${RESET}"
echo -e "${CYAN}==========================================${RESET}"
echo

# ----------------------------------------------------------
# Check sudo
# ----------------------------------------------------------

if ! command -v sudo >/dev/null 2>&1; then
    echo -e "${RED}[ERROR] sudo is not installed.${RESET}"
    exit 1
fi

# ----------------------------------------------------------
# Check Ubuntu
# ----------------------------------------------------------

if [ ! -f /etc/os-release ]; then
    echo -e "${RED}[ERROR] Cannot detect Linux distribution.${RESET}"
    exit 1
fi

source /etc/os-release

echo -e "${CYAN}[INFO] OS: ${PRETTY_NAME}${RESET}"
echo

# ----------------------------------------------------------
# Update repositories
# ----------------------------------------------------------

echo -e "${CYAN}[1/5] Updating APT...${RESET}"

sudo apt update

# ----------------------------------------------------------
# Install Flatpak
# ----------------------------------------------------------

echo -e "${CYAN}[2/5] Installing Flatpak...${RESET}"

sudo apt install -y flatpak

# ----------------------------------------------------------
# Add Flathub
# ----------------------------------------------------------

echo -e "${CYAN}[3/5] Adding Flathub...${RESET}"

sudo flatpak remote-add \
    --if-not-exists \
    flathub \
    https://dl.flathub.org/repo/flathub.flatpakrepo

# ----------------------------------------------------------
# Install Bazaar
# ----------------------------------------------------------

echo -e "${CYAN}[4/5] Installing Bazaar...${RESET}"

sudo flatpak install -y flathub io.github.kolunmi.Bazaar

# ----------------------------------------------------------
# Verify installation
# ----------------------------------------------------------

echo -e "${CYAN}[5/5] Checking installation...${RESET}"
echo

echo -e "${GREEN}Flatpak:${RESET}"
flatpak --version

echo

echo -e "${GREEN}Flathub:${RESET}"
flatpak remotes

echo

if flatpak info io.github.kolunmi.Bazaar >/dev/null 2>&1; then
    echo -e "${GREEN}✓ Bazaar installed successfully.${RESET}"
else
    echo -e "${RED}✗ Bazaar installation failed.${RESET}"
    exit 1
fi

echo
echo -e "${GREEN}==========================================${RESET}"
echo -e "${GREEN}        Installation completed!${RESET}"
echo -e "${GREEN}==========================================${RESET}"
echo

echo "Launch Bazaar with:"
echo
echo "    flatpak run io.github.kolunmi.Bazaar"
echo
