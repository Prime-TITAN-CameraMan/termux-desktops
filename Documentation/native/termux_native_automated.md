# Termux Native Automated Setup (No PRoot)
# Index
- **[Key Features](#key-features)**
- **[Requirements](#termux-needed)**
- **[Installtation Steps](#termux-auto-install)**
- **[Troubleshooting & Fixes](#termux-auto-fix)**

<br>

## Key Features <a name=key-features></a>
- **Easy Setup:** Easy 1-click installation process.
- **Hardware Acceleration:** Performance boost using your supported hardware.
- **Audio Support:** Desktop audio functional
- **GUI:** Termux X11
- **One-Click Browser Installation:** Firefox, Chromium

---
<br>

## Requirments <a name=termux-needed></a>
> [!WARNING]
> (NEVER USE THE GOOGLE PLAY STORE VERSION OF TERMUX AS IT IS OUTDATED)
- [Install **Termux** from their official GitHub repository](https://github.com/termux/termux-app/releases)
- [Install **Termux X11** from last successful builds of their official GitHub repository](https://github.com/termux/termux-x11/actions/workflows/debug_build.yml)
- **(Optional)** [Install **Termux API** from their official GitHub repository](https://github.com/termux/termux-api/releases)
#### Specs Requirements
- Android version must be 8+
- [Termux](https://github.com/termux/termux-app/releases)
- [Termux X11](https://github.com/termux/termux-x11/actions/workflows/debug_build.yml)
- [Termux API](https://github.com/termux/termux-api/releases) (Optional, only for additional features)
- Minimum 2GB of RAM; Recommended 3GB of RAM
- 500MB - 700MB of internet
- Minimum 4GB of storage; Recommended 5.50GB of storage

---
<br>

## Installtation Steps <a name=termux-auto-install></a>
Run the following commands in Termux:
```
pkg update -y
pkg install -y wget
```
Download TCM's automated setup script:
```
cd ~
wget https://raw.githubusercontent.com/Prime-TITAN-CameraMan/termux-desktops/refs/heads/main/Scripts/termux_native/termux_native_xfce4_setup.sh
```
Give executive permission to the script:
```
chmod +x termux_native_xfce4_setup.sh
```
Install `dos2unix`
```
pkg install -y dos2unix
```
Run the script:
```
dos2unix termux_native_xfce4_setup.sh
bash ~/termux_native_xfce4_setup.sh
```

> [!NOTE]
> This installation will take some time. So, be patience. Also it'll promt to enter a number for your desired browser installation.

> [!WARNING]
> It can cause slight screen tearing as the V-Sync in turned off, while the tearing is minimal or unnoticable if you've a moderate-good GPU

---
<br>

## Troubleshooting & fixes <a name=termux-auto-fix></a>
If you are having any kind of problem with Termux, (for example, if it's crashing) check and fix it from [here](/Documentation/native/termux_native.md#fix-problem-termux).
