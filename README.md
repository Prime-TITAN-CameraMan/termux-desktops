# Termux Desktops: Full Linux GUI on Android with Hardware Acceleration
Install a full Linux desktop environment on your Android device with Termux X11 and also with hardware acceleration alongwith desktop audio functional

The repository is based on—
**PRoot:** Debian only, because it's beginner-friendly
**DE:** XFCE4 only, because it's lightweight with full desktop setup.
**Hardware Acceleration:** HW is inbuilt inside scripts. So, whenever you run the script for starting the desktop, it'll automatically enable hardware acceleration too. So, I didn't made any documentation for it.

---
<br>

- **[Requirements](#termux-needs)**
- **[First Steps](#first-steps)**
- **[Native VS PRoot](#choose-linux)**
- **[Native & PRoot Details Sheet](#comparing-sheet)**
- **[How to install PRoot Distributions](#proot-distributions)**
- **[How to install Native Termux Desktop](#termux-native)**
- **[How to Install Native Termux Desktop (Fully Automated) just with one-click](#termux-native-auto)**
- **[How to use Applications from PRoot on Native](#termux-prootapp-native)**
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

Install Some Essential Packages In Termux at First before prceeding:
```
pkg update -y
pkg install -y x11-repo
pkg install -y termux-x11-nightly
pkg install -y pulseaudio
pkg install -y proot-distro
pkg install -y wget
pkg install -y git
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

## How to install proot distributions: Debian <a name=proot-distributions></a>
Click on the different text to see how you can install PRoot distributions of your choice.
- **[Debian](/Documentation/proot/debian_proot.md)**

---
<br>

## How to install Termux Native Desktop <a name=termux-native></a>
### You have all the information to install a native Termux Desktop [here](/Documentation/native/termux_native.md).

---
<br>

## How to Install Native Termux Desktop with 1-Click <a name=termux-native-auto></a>
### You have all the information to install a native Termux Desktop automatically [here](/Documentation/native/termux_native_automated.md).

---
<br>

## How to use PRoot applications on native Termux <a name=termux-prootapp-native></a>
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
