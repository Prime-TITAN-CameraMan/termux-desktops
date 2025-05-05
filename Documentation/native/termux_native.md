# Termux Native XFCE4 Desktop

All of informations to install the desktop available here, check below

---
<br>

## First Steps <a name=first-steps-termux></a>
Mame sure you've both Termux and Termux X11 installed. If didn't, install it from the link:
- [Install Termux from GitHub repository](https://github.com/termux/termux-app/releases)
- [Install Termux X11 from last successful builds of GitHub repository](https://github.com/termux/termux-x11/actions/workflows/debug_build.yml)

First install following packages in Termux:
```
pkg update
pkg install x11-repo
pkg install termux-x11-nightly
pkg install pulseaudio
```
Then you have to install the desktop you prefer, I only tested and given XFCE4:
> [!NOTE]
> XFCE4 is really small and efficient which makes it take the least amount of resources compared to other desktop environments.
```
pkg install -y xfce4
```
If you want to install Firefox:
```
pkg install -y tur-repo
pkg install -y firefox
```
If you want to install Chromium:
```
pkg install -y tur-repo
pkg install -y chromium
```
If you want to install VS Code:
```
pkg install -y tur-repo
pkg install -y code-oss
```
There are a lot of applications, you can add more applications by adding tur repository using `pkg install -y tur-repo` in Termux.

---
<br>

## Download script to start desktop environment: 

- startxfce4_termux.sh
```
hello
```

- To start the desktop environment, run this
```
bash ~/startxfce4_termux.sh
```
