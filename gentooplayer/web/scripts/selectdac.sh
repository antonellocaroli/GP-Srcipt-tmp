#!/bin/bash

#set -e

repeats=1
#text="I'm called"
#filename='/etc/conf.d/mpdbp-conf'
clear=false

while (( $# >= 1 ))
do
    key="$1"

    case $key in
        -a)
            dac="$2"
            shift # past argument
            ;;
        *)
            # unknown option
            ;;
    esac
    shift # past argument or value
done

mount /boot 2>/dev/null


dacc=$(awk '{print $1}' <<< "$dac")



case $dacc in

    1)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=i-sabre-q2m
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    3)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    4|8)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-boss-dac-pcm512x-audio
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    5|6)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-digione
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    7)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-katana-dac-audio
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    9)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-piano-dac-plus-pcm512x-audio
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    10)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-piano-dac-pcm512x-audio
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    11)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=on
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    12|16|21|22|23|24|25|33|70|71)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    13|14|15|17|20|28|29|30|31|32|34|39|41|45|46|57|58|59|62|63|65)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;

    44|61)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-digi-pro
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;

    19|18|35|40|42|60|66|67)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    26|27)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=dionaudio-loco
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    36|37|43)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-digi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    38)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-amp
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    47|49|51|50)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dacplus
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    48|53|64|68|72)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dac
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    52)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-digi-wm8804-audio
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    54|55)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=justboom-dac
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    56)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=justboom-digi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    69)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rra-digidac1-wm8741-audio
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
    2)
        cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=i-sabre-k2m
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

        echo -e "the system will restart with the new audio output"
        echo -e "Wait..." && sleep 5 ; reboot ;;
esac
