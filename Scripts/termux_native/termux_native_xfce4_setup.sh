#!/data/data/com.termux/files/usr/bin/bash

# Color definitions
BOLD_YELLOW="\e[1;33m"
BOLD_CYAN="\e[1;36m"
BOLD_GREEN="\e[1;32m"
RESET="\e[0m"

cd ~

echo -e "${BOLD_YELLOW}Updating and Installing Necessary Packages...\n(usually takes a minute)${RESET}"

pkg update
pkg upgrade -y
pkg install -y x11-repo
pkg install -y termux-x11-nightly
pkg install -y tur-repo
pkg install -y pulseaudio
pkg install -y x11-utils > /dev/null 2>&1
pkg install -y xorg-xhost
pkg install -y wget

echo -e "${BOLD_GREEN}Packages Updated and Installed Successfully!${RESET}"

sleep 1

echo -e "${BOLD_YELLOW} Configuring HW Acceleration: Removing conflicting packages and reinstalling the working packages${RESET}"
pkg remove -y vulkan-loader-generic > /dev/null 2>&1
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
      pkg install -y firefox
      echo -e "${BOLD_GREEN}Firefox Installed Successfully!${RESET}"
      break
      ;;
    2)
      echo -e "${BOLD_GREEN}Installing Chromium...\n(usually takes few minutes)${RESET}"
      pkg update > /dev/null 2>&1
      pkg install -y chromium
      echo -e "${BOLD_GREEN}Chromium Installed Successfully!${RESET}"
      break
      ;;
    3)
      echo -e "${BOLD_GREEN}Installing Firefox and Chromium (both)...\n(usually takes 5-10 minutes, depending on internet speed)${RESET}"
      pkg update > /dev/null 2>&1
      pkg install -y firefox
      pkg install -y chromium
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
pkg install -y xfce4
pkg install -y xfce4-goodies
pkg install -y xfce4-taskmanager > /dev/null 2>&1
pkg install -y xfce4-terminal > /dev/null 2>&1
pkg install -y thunar-archive-plugin > /dev/null 2>&1
pkg install -y file-roller > /dev/null 2>&1

cd ~

echo -e "${BOLD_GREEN}Installing TCM's Script to Launch The Desktop...${RESET}"
wget -O startxfce4.sh https://raw.githubusercontent.com/Prime-TITAN-CameraMan/termux-desktops/refs/heads/main/Scripts/termux_native/startxfce4_termux.sh

echo -e "${BOLD_GREEN}Granting Execution Permission to The Script...${RESET}"
chmod +x startxfce4.sh

mkdir -p $PREFIX/bin
mv startxfce4.sh $PREFIX/bin/startxfce4
clear

echo -e "${BOLD_CYAN}You can now launch the desktop by typing:${RESET}"
echo -e "${BOLD_YELLOW}startxfce4${RESET}"
exit

