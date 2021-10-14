#!/bin/bash
# How to make your script send output to journald
NAME=$(basename $0)
# stderr -> logs ERR level
exec 2> >(systemd-cat -t $NAME -p err)
# stdout -> logs INFO level
exec > >(systemd-cat -t $NAME)
echo normal message
make fire
