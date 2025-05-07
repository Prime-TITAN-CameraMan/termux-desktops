# Index
## PRoot-Distro (Debian)

- **[First Steps](#first-steps-debian)**
- **[Installing XFCE4 Desktop & Application](#desktop-debian)**
- **[Running The Desktop](#run-debian)**
- **[Download Desktop Startup Scripts](#script-debian)**

---
<br>

## First steps <a name=first-steps-debian></a>
1. Open Termux and install PRoot Distro
```
pkg update
pkg install -y proot-distro
```
2. Install Debian distribution
```
proot-distro install debian
```
3. Login into debian
```
proot-distro login debian
```
4. Run the following commands
```
apt update
apt install -y sudo
sudo apt install -y pulseaudio
sudo apt install -y dbus-x11
```

#### Create an user with Sudo privolileges
1. Install the following package
```
sudo apt install -y nano
sudo apt install -y adduser
```
2. Create a user
> [!NOTE]
> Change the `ptcm` to your user name in following command.
> Give a rememberable password and use **Enter** to skip unnecessary questions such as Full Name and others after that.
```
adduser ptcm
```
3. Give the user sudo privileges
```
nano /etc/sudoers
```
4. Add the following line under `# User privilege specification` and root
> [!NOTE]
> Make sure change the user `ptcm` to your user name which you've created
```
ptcm ALL=(ALL:ALL) ALL
```
> [!NOTE]
> Use **CTRL + X**, **Y** then **Enter** to save it.
5. Login into your user using following command
```
su - ptcm
```
> [!NOTE]
> Change the user `ptcm` to the user which you've created.
6. Check you can execute sudo commands (it should return `root`)
```
sudo whoami
```
Done, now check below for next steps

---
<br>

## Installing The Desktop & Applications <a name=desktop-debian></a>
Later

---
<br>

## Running The Desktop <a name=run-debian></a>
Later

---
<br>

## Download Desktop Launching Scripts Easily <a name=script-debian></a>
Later
