#!/bin/bash
# Variable MAC will hold the mac address.
# 52:54:00 is QEMU OUI
printf -v MAC "52:54:00:%02x:%02x:%02x" $((RANDOM%256)){,,}
echo $MAC
