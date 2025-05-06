# Termux Native (No PRoot)
# Index
- **[First Steps](#first-steps-termux)**
- **[Install Essential Applications](#apps-install-termux)**
- **[Download Scripts to Launch the Desktop](#script-download-termux)**
- **[Troubleshooting and fixes](#fix-problem-termux)**

<br>

## First Steps <a name=first-steps-termux></a>
Make sure you've both Termux and Termux X11 installed. If didn't, install it from the link:
> [!WARNING]
> (NEVER USE THE GOOGLE PLAY STORE VERSION OF TERMUX AS IT IS OUTDATED)
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
If you want to install Firefox: <a name=apps-install-termux></a>
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

## Download script to start desktop environment: <a name=script-download-termux></a>

- startxfce4_termux.sh
```
wget https://raw.githubusercontent.com/Prime-TITAN-CameraMan/termux-desktops/refs/heads/main/Scripts/termux_native/startxfce4_termux.sh
```

- To start the desktop environment, run this
```
bash ~/startxfce4_termux.sh
```

---
<br>

## Troubleshooting and fixes <a name=fix-problem-termux></a>
### Termux X11 randomly getting killed/shutdown

You need to disable Phantom Processes using [this guide](https://github.com/EDLLT/TermuxDisablePhantomProcess)

If Termux X11 STILL abruptly gets killed even after disabling Phantom Processes then apply this to both the Termux app AND Termux X11 https://dontkillmyapp.com/

> [!WARNING]
> Doing the above(Disabling Phantom Process killer, following dontkillmyapp) would mean that the Termux X11 session WILL NEVER shutdown unless YOU manually shut it down. You can do so by running the following command (If you FORGET to shutdown Termux X11 then it might result in battery drain)
```
kill -9 $(pgrep -f "termux.x11") 2>/dev/null
```

### Termux:X11's resolution is too big/too small. Cursor issues and cursor's speed is too fast/slow

- To fix the resolution: Pressing the android back key or going home then back to Termux:X11 usually fixes the resolution
  
- To change the screen scaling: On the other hand, if you find the icons/UI to be too small then you could close the termux:x11 session, go to "Preferences"(ONLY APPEARS IF THE TERMUX X11 SESSION IS NOT RUNNING) and change display resolution mode to scaled then drag the Display Scale % to something that you're satisfied with.
  
- To change cursor settings: Get into termux:X11's preferences, then enable "Capture external pointer devices when possible" and drag the "Captured pointer speed factor, %" to something you feel comfortable with.
