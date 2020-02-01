#!/bin/bash

#set -e

repeats=1
#text="I'm called"


while (( $# >= 1 ))
do
    key="$1"

    case $key in
        -a)
            hdmi="$2"
            shift # past argument
            ;;
        -b)
            act="$2"
            shift # past argument
            ;;
        -c)
            pwr="$2"
            shift # past argument
            ;;
        -d)
            wifi="$2"
            shift # past argument
            ;;
        -e)
            spot="$2"
            shift # past argument
            ;;
        *)
            # unknown option
            ;;
    esac
    shift # past argument or value
done



if [ "$hdmi" = "enable" ]; then
    if grep -Fxq hdmi_force_hotplug=1 "/boot/config.txt"; then
        echo "ok"
    else
        echo "hdmi_force_hotplug=1" >> "/boot/config.txt"
    fi
    if grep -Fxq hdmi_blanking=1 "/boot/config.txt"; then
        sed -i '/hdmi_blanking=1/c\' "/boot/config.txt"
        sed -i '/hdmi_ignore_hotplug=1/c\' "/boot/config.txt"
        sed -i '/hdmi_ignore_composite=1/c\' "/boot/config.txt"
    fi
fi


if [ "$hdmi" = "disable" ]; then
  if grep -Fxq hdmi_blanking=1 "/boot/config.txt"; then
        sed -i '/hdmi_force_hotplug=1/c\' "/boot/config.txt"
        echo "ok"
    else
        echo "hdmi_blanking=1" >> "/boot/config.txt"
        echo "hdmi_ignore_hotplug=1" >> "/boot/config.txt"
        echo "hdmi_ignore_composite=1" >> "/boot/config.txt"
        sed -i '/hdmi_force_hotplug=1/c\' "/boot/config.txt"
  fi
fi

if [ "$act" = "enable" ]; then
  if grep -Fxq dtparam=act_led_trigger=none "/boot/config.txt"; then
        sed -i '/dtparam=act_led_trigger=none/c\' "/boot/config.txt"
        sed -i '/dtparam=act_led_activelow=on/c\' "/boot/config.txt"
  else
    echo "ok"
  fi
fi
if [ "$act" = "disable" ]; then
  if grep -Fxq dtparam=act_led_trigger=none "/boot/config.txt"; then
    echo "ok"
  else
    echo "dtparam=act_led_trigger=none" >> /boot/config.txt
    echo "dtparam=act_led_activelow=on" >> /boot/config.txt
  fi
fi

if [ "$pwr" = "enable" ]; then
  if grep -Fxq dtparam=pwr_led_trigger=none "/boot/config.txt"; then
        sed -i '/dtparam=pwr_led_trigger=none/c\' "/boot/config.txt"
        sed -i '/dtparam=pwr_led_activelow=on/c\' "/boot/config.txt"
  else
    echo "ok"
  fi
fi
if [ "$pwr" = "disable" ]; then
  if grep -Fxq dtparam=pwr_led_trigger=none "/boot/config.txt"; then
    echo "ok"
  else
    echo "dtparam=pwr_led_trigger=none" >> /boot/config.txt
    echo "dtparam=pwr_led_activelow=on" >> /boot/config.txt
  fi
fi

if [ "$wifi" = "enable" ]; then
      if grep -Fxq dtoverlay=pi3-disable-wifi "/boot/config.txt"; then
        sed -i '/dtoverlay=pi3-disable-wifi/c\' "/boot/config.txt"
        echo "ok"
    else
        echo "ok"
    fi
fi

if [ "$wifi" = "disable" ]; then
    if grep -Fxq dtoverlay=pi3-disable-wifi "/boot/config.txt"; then
        echo "ok"
    else
        echo "dtoverlay=pi3-disable-wifi" >> "/boot/config.txt"
        echo "ok"
    fi
fi

if [ "$spot" = "enable" ]; then
    if [ -f /etc/local.d/ireteonline.start ]; then
        echo "ok"
    else
        mv /etc/local.d/ireteonline.start.back /etc/local.d/ireteonline.start
        echo "ok"
    fi
fi

if [ "$spot" = "disable" ]; then
    if [ -f /etc/local.d/ireteonline.start ]; then
        mv /etc/local.d/ireteonline.start /etc/local.d/ireteonline.start.back
        echo "ok"
    else
        echo "ok"
    fi
fi
