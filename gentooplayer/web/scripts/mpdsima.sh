#!/bin/bash


if
rc-update show -v | grep "mpd-sima" | grep default 1>/dev/null; then
    echo -e "enable"
else
    echo -e "disable"
fi