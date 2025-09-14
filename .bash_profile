FLAGFILE="/tmp/x_started"

if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]] && [[ ! -f "$FLAGFILE" ]]; then
    touch "$FLAGFILE"
    exec startx
fi
