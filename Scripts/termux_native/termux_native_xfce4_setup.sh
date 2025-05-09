#!/data/data/com.termux/files/usr/bin/bash

# Color definitions
BOLD_YELLOW="\e[1;33m"
BOLD_CYAN="\e[1;36m"
BOLD_GREEN="\e[1;32m"
RESET="\e[0m"

cd ~

echo -e "${BOLD_YELLOW}Updating and Installing Necessary Packages...\n(usually takes a minute)${RESET}"

pkg update -y > /dev/null 2>&1
pkg install -y tur-repo > /dev/null 2>&1
pkg install -y x11-repo > /dev/null 2>&1
pkg install -y termux-x11-nightly > /dev/null 2>&1
pkg install -y pulseaudio > /dev/null 2>&1
pkg install -y x11-utils > /dev/null 2>&1
pkg install -y xorg-xhost > /dev/null 2>&1
pkg install -y wget > /dev/null 2>&1
pkg install -y curl > /dev/null 2>&1

echo -e "${BOLD_GREEN}Packages Updated and Installed Successfully!${RESET}"

sleep 2

echo -e "${BOLD_YELLOW} Configuring HW Acceleration: Removing conflicting packages and reinstalling the working packages${RESET}"
apt remove -y virglrenderer virglrenderer-mesa-zink vulkan-loader-generic > /dev/null 2>&1
pkg clean -y > /dev/null 2>&1
pkg install -y mesa-zink virglrenderer-mesa-zink vulkan-loader-android virglrenderer-android > /dev/null 2>&1

while true; do
  echo -e "${BOLD_CYAN}Select Your Browsers:${RESET}"
  echo -e "${BOLD_YELLOW}1) Firefox (recommended)${RESET}"
  echo -e "${BOLD_YELLOW}2) Chromium${RESET}"
  echo -e "${BOLD_YELLOW}3) Firefox and Chromium (both)${RESET}"

  read -p "Enter your choice [1-3]: " choice

  case $choice in
    1)
      echo -e "${BOLD_GREEN}Installing Firefox...\n(usually takes few moments)${RESET}"
      pkg update > /dev/null 2>&1
      pkg install -y firefox > /dev/null 2>&1
      echo -e "${BOLD_GREEN}Firefox Installed Successfully!${RESET}"
      break
      ;;
    2)
      echo -e "${BOLD_GREEN}Installing Chromium...\n(usually takes few minutes)${RESET}"
      pkg update > /dev/null 2>&1
      pkg install -y chromium > /dev/null 2>&1
      echo -e "${BOLD_GREEN}Chromium Installed Successfully!${RESET}"
      break
      ;;
    3)
      echo -e "${BOLD_GREEN}Installing Firefox and Chromium (both)...\n(usually takes 5-10 minutes, depending on internet speed)${RESET}"
      pkg update > /dev/null 2>&1
      pkg install -y firefox > /dev/null 2>&1
      pkg install -y chromium > /dev/null 2>&1
      echo -e "${BOLD_GREEN}Firefox and Chromium Installed Successfully!${RESET}"
      break
      ;;
    *)
      echo -e "${BOLD_YELLOW}Invalid option. Please try again.${RESET}"
      ;;
  esac
done

sleep 1

echo -e "${BOLD_GREEN}Installing XFCE4 Desktop and Its Goodies...\n(usually takes 3-15 minutes depending on internet speed and device specifications)${RESET}"
pkg install -y xfce4 > /dev/null 2>&1
pkg install -y xfce4-goodies > /dev/null 2>&1
pkg install -y xfce4-taskmanager > /dev/null 2>&1
pkg install -y xfce4-terminal > /dev/null 2>&1

cd ~

echo -e "${BOLD_GREEN}Installing TCM's Script to Launch The Desktop...${RESET}"
wget https://raw.githubusercontent.com/Prime-TITAN-CameraMan/termux-desktops/refs/heads/main/Scripts/termux_native/startxfce4_termux.sh

echo -e "${BOLD_GREEN}Granting Execution Permission to The Script...${RESET}"
chmod +x startxfce4_termux.sh

echo -e "${BOLD_CYAN}Use ./startxfce4_termux.sh to launch the desktop.${RESET}"

exit
