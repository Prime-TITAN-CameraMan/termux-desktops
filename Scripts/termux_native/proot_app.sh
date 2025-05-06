#!/data/data/com.termux/files/usr/bin/bash

# Set environment for GUI display and audio
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1
export XDG_RUNTIME_DIR=${TMPDIR}

# Check if app name is given
if [ -z "$1" ]; then
  echo "Usage: $0 <app-name> [args]"
  exit 1
fi

# Run the app inside Debian PRoot as user 'ptcm'
proot-distro login debian --shared-tmp --user ptcm -- \
  env DISPLAY=$DISPLAY \
      PULSE_SERVER=$PULSE_SERVER \
      XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
      "$@"
