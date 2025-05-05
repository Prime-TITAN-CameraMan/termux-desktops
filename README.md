# Termux X11 XFCE4 Desktops
Setup XFCE4 desktop in Termux with hardware acceleration alongwith desktop audio functional. A whole setup of Native and PRoot

---
<br>

## First Steps <a name=first-steps></a>
We are going to use Termux and Termux X11 in order to have a full Linux Desktop in our Android devices.
- [Install Termux from GitGub repository](https://github.com/termux/termux-app/releases)
- [Install Termux X11 from last successful builds of GitHub repository](https://github.com/termux/termux-x11/actions/workflows/debug_build.yml)

Install Some Essential Packages In Termux at First:
```
pkg update -y
pkg install -y x11-repo
pkg install -y termux-x11-nightly
pkg install -y tur-repo
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

## 🐧 How to install proot distributions: Debian <a name=proot-distributions></a>

Click on the different textsto see how you can install PRoot distributions of your choice.

## [Debian](debian_proot.md)

---
<br>

## 💻 How to install Termux Native Desktop <a name=termux-native></a>
### You have all the information to install a native Termux Desktop [here](/Documentation/native/termux_native.md).
