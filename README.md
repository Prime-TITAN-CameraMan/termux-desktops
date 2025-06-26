# Termux Desktops: Full Linux GUI on Android with Hardware Acceleration
Install a full Linux desktop environment on your Android device with Termux X11 and also with hardware acceleration alongwith desktop audio functional

The project is based on—
- **PRoot:** Debian & Ubuntu, because they are beginner-friendly for everyone.
- **DE:** XFCE4, because it's lightweight with full-featured desktop environment.
- **Hardware Acceleration:** There's no documentation for hardware acceleration, because hardware acceleration is already settled in my scripts you can install the desktop environment using following steps and the hardware acceleration shall work alongwith the desktop environment. Whenever, you run the desktop environment using my script, hardware acceleration will work too.
> [!NOTE]
> **For native Termux:** We're using Zink as hardware acceleration. So, make sure to check if your Android device supports Vulkan or not. If it supports, continue.

> **For PRoot distro:** We're going to use VirGL, which is totally supported by all of Android devices

---
<br>

- **[Requirements](#termux-needs)**
- **[First Steps](#first-steps)**
- **[Native VS PRoot](#choose-linux)**
- **[Native & PRoot Details Sheet](#comparing-sheet)**
- **[How to install PRoot Distribution Desktop](#proot-distributions)**
- **[How to install Native Termux Desktop](#termux-native)**
- **[How to Install Native Termux Desktop (Fully Automated) just with one-click](#termux-native-auto)**
- **[How to use Applications from PRoot on Native Desktop](#termux-prootapp-native)**
- **[How to fix Termux Storage, Microphone and Other Services Problem in Desktop](#termux-problem-fix)**

<br>

## Basic Termux Requirements <a name=termux-needs></a>
- Android version must be 8 or higher
- Minimum 512MB of RAM; Recommended 1.5GB of RAM
- 50MB - 100MB of internet data for base Termux packages
- Minimum 150MB of storage; Recommended 300MB of storage

---
<br>

## First Steps <a name=first-steps></a>
We are going to use Termux and Termux X11 in order to have a full Linux Desktop in our Android devices.
> [!WARNING]
> (NEVER USE THE GOOGLE PLAY STORE VERSION OF TERMUX AS IT IS OUTDATED)
- [Install Termux from GitHub repository](https://github.com/termux/termux-app/releases)
- [Install Termux X11 from last successful builds of GitHub repository](https://github.com/termux/termux-x11/actions/workflows/debug_build.yml)

Update & install some essential packages in Termux at first before proceeding:
```
pkg update
pkg upgrade -y
pkg install -y x11-repo
pkg install -y termux-x11-nightly
pkg install -y pulseaudio
pkg install -y proot-distro
pkg install -y wget
```

---
<br>

# Termux native VS Proot-distro <a name=choose-linux></a>

### [1. Termux Native](#termux-native)

Termux native refers to running Linux commands directly within the Termux app without any additional virtualization or containerization. It provides a lightweight and straightforward way to access Linux utilities on your Android device.

### [2. Proot-Distro](#proot-distributions)

Proot-Distro is a method that utilizes `proot` (PRoot is a user-space implementation of chroot, mount --bind, and binfmt_misc) to run a full Linux distribution inside a chroot environment. This approach allows you to install and use a wide range of Linux distributions without root access. However, it may have some limitations compared to native installations.

#### Summary

- **Termux Native:** Simple and lightweight, but with limited capabilities compared to full Linux distributions.
- **Proot-Distro:** Allows running full Linux distributions without root access, but may have some limitations.

<hr style="width: 30%; height: 2px; background-color: gray; border: none; margin: auto;">
<br>

## Comparison of Linux Environments on Android <a name=comparing-sheet></a>
| Feature             | Proot          | Native         |
|---------------------|----------------|----------------|
| Needs Root?         | ❌ (No)        | ❌ (No)        |
| Many Linux Apps?    | ✅ (Yes)       | ❌ (Limited)   |
| Performance         | Moderate 💼    | Good 🚀        |

---
<br>

## How to install proot distribution desktop: Debian, Ubuntu <a name=proot-distributions></a>
Click on the different text to see how you can install PRoot distributions of your choice.
- **[Debian](/Documentation/proot/debian_proot.md)**
- **[Ubuntu](/Documentation/proot/ubuntu_proot.md)**

---
<br>

## How to install Termux Native Desktop <a name=termux-native></a>
### You have all the information to install a native Termux Desktop [here](/Documentation/native/termux_native.md).

---
<br>

## How to Install Native Termux Desktop with 1-Click <a name=termux-native-auto></a>
To install the desktop without any kind of commands running work, click on the 1-Click Installation.
- **[1-Click Installation](/Documentation/native/termux_native_automated.md).**

---
<br>

## How to use PRoot applications on native Termux Desktop <a name=termux-prootapp-native></a>
### All informations and process regarding PRoot applications on native Termux are available [here](/Documentation/native/termux_prootapp_native.md)

---
<br>

## How to fix Termux Storage, Microphone and Other Services Problem in Termux Desktop <a name=termux-problem-fix></a>
### All informations and process are available [here](/Documentation/termux/problem_fix.md)

---
<br>

## Credits & Inspiration

**This project is inspired by:**

- [@sabamdarif](https://github.com/sabamdarif)'s [termux-desktop](https://github.com/sabamdarif/termux-desktop) repository  
- [@LinuxDroidMaster](https://github.com/LinuxDroidMaster)'s [Termux-Desktops](https://github.com/LinuxDroidMaster/Termux-Desktops) repository
