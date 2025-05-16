#!/data/data/com.termux/files/usr/bin/bash  
  
# Kill open X11 processes  
kill -9 $(pgrep -f "termux.x11") 2>/dev/null  
  
# Enable PulseAudio over Network  
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1  

# Start the mic
pactl load-module module-sles-source

# Set environment variables globally in the shell
export DISPLAY=:0
export MESA_NO_ERROR=1
export MESA_GL_VERSION_OVERRIDE=4.3COMPAT
export MESA_GLES_VERSION_OVERRIDE=3.2
export GALLIUM_DRIVER=zink
export MESA_VK_DEVICE_SELECT=0
export ZINK_DESCRIPTORS=lazy
export vblank_mode=0
export MESA_NO_WAIT_FOR_VBLANK=1
export LIBGL_DRI3_ENABLE=1

# Run virgl_test_server in the background
virgl_test_server --use-egl-surfaceless --use-gles &


# Prepare termux-x11 session  
export XDG_RUNTIME_DIR=${TMPDIR}  
termux-x11 :0 >/dev/null &  
  
# Wait a bit until termux-x11 gets started.  
sleep 4  
  
# Launch Termux X11 main activity  
am start --user 0 -n com.termux.x11/com.termux.x11.MainActivity > /dev/null 2>&1  
sleep 2  
  
# Set audio server  
export PULSE_SERVER=127.0.0.1  

# Run XFCE4 Desktop  with Hardware Acceleration
dbus-launch --exit-with-session xfce4-session & > /dev/null 2>&1  

xfconf-query -c xfwm4 -p /general/vblank_mode -s "off"

exit 0
