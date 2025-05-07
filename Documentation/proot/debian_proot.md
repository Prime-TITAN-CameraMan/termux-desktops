# Index
## PRoot-Distro (Debian)

- **[First Steps](#first-steps-debian)**
- **[Installing XFCE4 Desktop & Application](#desktop-debian)**
- **[Running The Desktop](#run-debian)**
- **[Download Desktop Startup Scripts](#script-debian)**
- **[Necceessary Informations](#imp-proot-info)**

---
<br>

## First steps <a name=first-steps-debian></a>
1. Open Termux and install PRoot Distro:
```
pkg update
pkg install -y proot-distro
```
2. Install Debian distribution:
```
proot-distro install debian
```
3. Login into debian:
```
proot-distro login debian
```
4. Run the following commands:
```
apt update
apt install -y sudo
sudo apt install -y pulseaudio
sudo apt install -y dbus-x11
```

#### Create an user with Sudo privolileges
1. Install the following package:
```
sudo apt install -y nano
sudo apt install -y adduser
```
2. Create a user:
> [!NOTE]
> Change the `ptcm` to your user name in following command.
> Give a rememberable password and use **Enter** to skip unnecessary questions such as Full Name and others after that.
```
adduser ptcm
```
3. Give the user sudo privileges:
```
nano /etc/sudoers
```
4. Add the following line under `# User privilege specification` and root:
> [!NOTE]
> Make sure change the user `ptcm` to your user name which you've created
```
ptcm ALL=(ALL:ALL) ALL
```
> [!NOTE]
> Use **CTRL + X**, **Y** then **Enter** to save it.
5. Login into your user using following command:
```
su - ptcm
```
> [!NOTE]
> Change the user `ptcm` to the user which you've created.
6. Check you can execute sudo commands (it should return `root`):
```
sudo whoami
```
Done, now check below for next steps

---
<br>

## Installing The Desktop & Applications <a name=desktop-debian></a>
Make sure you've logged in debian before proceed, if didn't use `proot-distro login debian` to login

Login to your user and run following command to install XFCE4 desktop:
```
sudo apt install -y xfce4
```
> [!NOTE]
> This process will take a bit long. Make sure to do not AFK, after it got downloaded during installation it'll promt some questions you need to answer that using numbers on keyboard.

**(Optional)** Install following packages for berttter functionality:
```
sudo apt install -y xfce4-goodies
sudo apt install -y xfce4-terminal
```

Install your desired applications

For example, Installing Firefox:
```
apt install -y firefox-esr
```
For Chromium:
```
apt install -y chromium
```
> [!NOTE]
> If it got fails for without administrative privilleges, use `sudo` at first then type command to avoid it.

It's done, now check below for next steps.

---
<br>

## Running The Desktop <a name=run-debian></a>
Exit from Debian, and run following commands:
```
pkg update
pkg install -y x11-repo
pkg install -y termux-x11-nightly
pkg install -y pulseaudio
```
Then, you just need to download the script corresponding to the Desktop you have installed, give it permissions to execute it and run it (in Termux, not in proot-distro):
> [!NOTE]
> Make sure to download the script at first, before proceeding. Check below section to see how you can install.
```
chmod +x startxfce4_debian.sh
./startxfce4_debian.sh
```

---
<br>

## Download Desktop Launching Scripts Easily <a name=script-debian></a>
> [!NOTE]
> By default this script works with the user `ptcm`. If you create a user with a different name in proot-distro, please edit the script change the user where it says `ptcm` inside the scripts.
> Use `nano startxfce4_debian.sh` to edit the script.
> Make sure to install the scripts in Termux, not PRoot.
```
cd ~
wget https://raw.githubusercontent.com/Prime-TITAN-CameraMan/termux-desktops/refs/heads/main/Scripts/proot_debian/startxfce4_debian.sh
```
Now run the script in Termux native (Not In PRoot), whenever you want to use the desktop. 

---
<br>

## Some Additional Informations <a name=imp-proot-info></a>
### Troubleshooting & Fixes
If you are having any kind of problem with Termux, for example, if it's crashing, check and fix it from [here](/Documentation/native/termux_native.md#fix-problem-termux).

<br>

### Recommendation
It's recommended to use Termux Native XFCE4 Desktop, because PRoot is way more slower than Native. But, in native you don't have much compatiblity. But, there's a workaround for it.

**Workaround:** Use display exporting for using PRoot applications on Native. All informations and process regarding it are available [here](/Documentation/native/termux_prootapp_native.md)
