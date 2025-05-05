# Termux X11 XFCE4 Desktops
Setup XFCE4 desktop in Termux with hardware acceleration alongwith desktop audio functional. A whole setup of Native and PRoot

---

## First Steps 
We are going to use Termux and Termux X11 in order to have a full Linux Desktop in our Android devices.
- [Install Termux from GitGub repository](https://github.com/termux/termux-app/releases)
- [Install Termux X11 from last successful builds of GitHub repository](https://github.com/termux/termux-x11/actions/workflows/debug_build.yml)

Install Some Essential Packages In Termux at First:
```pkg update -y
pkg install -y x11-repo
pkg install -y termux-x11-nightly
pkg install -y tur-repo
pkg install -y pulseaudio
pkg install -y proot-distro
pkg install -y wget
pkg install -y git
```
