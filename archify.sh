#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    SUDO="sudo"
else
    SUDO=""
fi

# Replace contents of /etc/os-release
echo 'NAME="Arch Linux"
PRETTY_NAME="Arch Linux"
ID=arch
BUILD_ID=rolling
ANSI_COLOR="0;36"
HOME_URL="https://www.archlinux.org/"
DOCUMENTATION_URL="https://wiki.archlinux.org/"
SUPPORT_URL="https://bbs.archlinux.org/"
BUG_REPORT_URL="https://bugs.archlinux.org/"
LOGO=archlinux' | $SUDO tee /etc/os-release > /dev/null

# Replace contents of /etc/lsb-release
echo 'DISTRIB_ID=Arch
DISTRIB_RELEASE=rolling
DISTRIB_CODENAME=
DISTRIB_DESCRIPTION="Arch Linux"' | $SUDO tee /etc/lsb-release > /dev/null
