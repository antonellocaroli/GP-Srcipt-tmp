#!/bin/bash

function pausa() {
    echo
    read -s -p 'Press "Enter" to continue and apply the changes... or CTRL+C to exit'
    clear
    echo
}

function console() {
    cat > /etc/inittab <<EOF
#
# /etc/inittab:  This file describes how the INIT process should set up
#                the system in a certain run-level.
#
# Author:  Miquel van Smoorenburg, <miquels@cistron.nl>
# Modified by:  Patrick J. Volkerding, <volkerdi@ftp.cdrom.com>
# Modified by:  Daniel Robbins, <drobbins@gentoo.org>
# Modified by:  Martin Schlemmer, <azarah@gentoo.org>
# Modified by:  Mike Frysinger, <vapier@gentoo.org>
# Modified by:  Robin H. Johnson, <robbat2@gentoo.org>
# Modified by:  William Hubbs, <williamh@gentoo.org>
#

# Default runlevel.
id:3:initdefault:

# System initialization, mount local filesystems, etc.
si::sysinit:/sbin/openrc sysinit

# Further system initialization, brings up the boot runlevel.
rc::bootwait:/sbin/openrc boot

l0:0:wait:/sbin/openrc shutdown
l0s:0:wait:/sbin/halt -dhnp
l1:1:wait:/sbin/openrc single
l2:2:wait:/sbin/openrc nonetwork
l3:3:wait:/sbin/openrc default
l4:4:wait:/sbin/openrc default
l5:5:wait:/sbin/openrc default
l6:6:wait:/sbin/openrc reboot
l6r:6:wait:/sbin/reboot -dkn
#z6:6:respawn:/sbin/sulogin

# new-style single-user
su0:S:wait:/sbin/openrc single
su1:S:wait:/sbin/sulogin

# TERMINALS
#x1:12345:respawn:/sbin/agetty 38400 console linux
#c1:12345:respawn:/sbin/agetty 38400 tty1 linux
#c2:2345:respawn:/sbin/agetty 38400 tty2 linux
#c3:2345:respawn:/sbin/agetty 38400 tty3 linux
#c4:2345:respawn:/sbin/agetty 38400 tty4 linux
#c5:2345:respawn:/sbin/agetty 38400 tty5 linux
#c6:2345:respawn:/sbin/agetty 38400 tty6 linux

# SERIAL CONSOLES
#s0:12345:respawn:/sbin/agetty -L 9600 ttyS0 vt100
#s1:12345:respawn:/sbin/agetty -L 9600 ttyS1 vt100

# What to do at the "Three Finger Salute".
ca:12345:ctrlaltdel:/sbin/shutdown -r now

# Used by /etc/init.d/xdm to control DM startup.
# Read the comments in /etc/init.d/xdm for more
# info. Do NOT remove, as this will start nothing
# extra at boot if /etc/init.d/xdm is not added
# to the "default" runlevel.
x:a:once:/etc/X11/startDM.sh

# Architecture specific features
#f0:12345:respawn:/sbin/agetty 9600 ttyAMA0 vt100
EOF
}

tt='echo "c1:12345:respawn:/sbin/agetty 38400 tty1 linux" >> /etc/inittab'

echo -e "do you want to disable the linux console?"
echo -e "it can be useful if you do not use a monitor"
echo -e "to restore the console type the following command:"
echo -e "\e[1;38;5;88mecho \"c1:12345:respawn:/sbin/agetty 38400 tty1 linux\" >> /etc/inittab\e[0m"

pausa

console
