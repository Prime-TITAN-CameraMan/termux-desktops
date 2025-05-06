# PRoot Application on Native
# Index
- **[How it works](#how-work)**
- **[First Steps](#app-first-steps)**
- **[Download Scripts to Use the Applications on Native](#app-script-download)**

<br>

## How it works <a name=how-work></a>
The application runs inside a PRoot container, but its graphical output is exported to DISPLAY=:0, where the native XFCE4 desktop is running (natively inside Termux, not via chroot or PRoot).
This allows applications that are otherwise isolated in the PRoot environment to appear and behave like native apps, integrated directly into the desktop environment.
Audio support is also enabled by exporting PulseAudio from the PRoot environment to the native PulseAudio server, allowing apps to output sound seamlessly.
### Full Details
In this setup, Termux Native is running an X server (X11) with the XFCE4 desktop session bound to :0 (Display 0).
Inside the PRoot container, environment variables are set so that GUI applications export their graphical output to DISPLAY=:0.
At the same time, PulseAudio is configured to route audio from within the PRoot to the native system, typically using a TCP.
This allows both visual and audio components of an app to function inside PRoot while appearing and sounding native on the Termux desktop — without requiring chroot or running desktop in PRoot
It’s a lightweight and modular solution that combines visual integration and full sound support.
### Script Automation
Using my custom Bash shell script, this entire process is automated.
The script sets up DISPLAY=:0 for graphical output, exports the correct PulseAudio settings (e.g., setting PULSE_SERVER), and then launches the application.
This means you don’t have to manually configure anything — with one command, the app runs inside PRoot but appears on the native XFCE4 desktop with full audio and display support, just like a regular desktop app.

---
<br>

## First Steps <a name=app-first-steps></a>
Install the following packages in Termux
```
pkg update -y
pkg install -y wget
pkg install -y x11-repo
pkg install -y pulseaudio
```
Login to the PRoot env (e.g. Debian)
```
proot-distro login debian
```
Install following packages inside Debian
```
apt update -y
apt install -y sudo
sudo apt install -y nano
sudo apt install -y adduser
sudo apt install -y pulseaudio
sudo apt install -y dbus-x11
sudo apt install -y x11-utils
```
Add a user if you didn't added yet
```
adduser yourname
```
Give administrative privileges to the user
```
nano /etc/sudoers
```
Add the following line under `# User privilege specification` and root
```
yourusername ALL=(ALL:ALL) ALL
```
Then use CTRL+X, Y then Enter.

<br>

Exit through Debian using following command
```
exit
```
Everything done now check below.

---
<br>

## Download the Scripts to run the application in PRoot and display on native <a name=app-script-download></a>
Later Too
