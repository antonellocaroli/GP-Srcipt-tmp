#!/bin/bash

selectd(){
    clear
    mount /dev/mmcblk0p1 2>/dev/null
    echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
    echo -e ""
    echo -e "        $color1"GentooPlayer"$color_off - $BBlue"Select Dac"$Color_Off"
    echo -e ""
    echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
    echo ""
    echo -e " [1]  $Green"i-sabre-q2m/k2m and i2s general"$Color_Off [37] HIFIBerry Amp(Amp+)"
    echo -e " [2]  $Green"DAC USB"$Color_Off                         [38] HIFIBerry DAC"
    echo -e " [3]  Allo Boss Dac                   [39] HIFIBerry DAC+"
    echo -e " [4]  Allo DigiOne                    [40] HIFIBerry DAC+ Light"
    echo -e " [5]  Allo DigiOne Signature          [41] HIFIBerry DAC+ Pro"
    echo -e " [6]  Allo Katana Dac                 [42] HIFIBerry Digi(Digi+)"
    echo -e " [7]  Allo MiniBoss Dac               [43] HIFIBerry Digi+ Pro"
    echo -e " [8]  Allo Piano 2.1 Hi-Fi Dac        [44] Hifimediy ES9023"
    echo -e " [9]  Allo Piano Hi-Fi Dac            [45] IanFIFO II"
    echo -e " [10] Audio on Board (Rpi)            [46] IQaudIO Pi-AMP+"
    echo -e " [11] Audiophonics ES9018 Dac         [47] IQaudIO Pi-DAC"
    echo -e " [12] Audiophonics ES9023 Dac         [48] IQaudIO Pi-DAC PRO"
    echo -e " [13] Audiophonics ES9023 Dac Lte     [49] IQaudIO Pi-DAC+"
    echo -e " [14] Audiophonics ES9023 Dac Txco    [50] IqaudIO Pi-DACZero"
    echo -e " [15] Audiophonics ES9028 Dac         [51] IQaudIO Pi-Digi+"
    echo -e " [16] Audiophonics PCM5102 Dac        [52] IQaudIO Pi-DigiAMP+"
    echo -e " [17] Audiophonics PCM5122            [53] JustBoom AMP HAT(Zero)"
    echo -e " [18] Audiophonics PCM5122 Dac        [54] JustBoom DAC HAT(Zero)"
    echo -e " [19] Audiophonics TDA1387 Dac        [55] JustBoom Digi HAT(Zero)"
    echo -e " [20] Buffalo I                       [56] Lucid Labs Raspberry Pi DAC"
    echo -e " [21] Buffalo II/IIIse                [57] Mamboberry HiFi DAC+"
    echo -e " [22] DDDAC1794 NOS                   [58] Mamboberry LS DAC+"
    echo -e " [23] Denafrips Pontus R2R Dac (I2S)  [59] Pi2Design 502DAC"
    echo -e " [24] DIAL-DAC                        [60] Pi2Design 502DAC PRO"
    echo -e " [25] Dion Audio LOCO                 [61] Pi2Design 503HTA Hybrid Tube AMP"
    echo -e " [26] Dion Audio LOCO V2              [62] Pimoroni pHAT DAC"
    echo -e " [27] DIYINHK ES9023 Dac              [63] PlainAMP"
    echo -e " [28] Durio Sound PRO                 [64] PlainDAC"
    echo -e " [29] G2 Labs BerryNOS                [65] PlainDAC+"
    echo -e " [30] G2 Labs BerryNOS Red            [66] PlainDSP"
    echo -e " [31] Generic-1 I2S (hifiberry-dac)   [67] RaspiPlay4"
    echo -e " [32] Generic-2 I2S (rpi-dac)         [68] Red Rocks Audio DigiDAC1"
    echo -e " [33] HIFI DAC                        [69] RPi-DAC"
    echo -e " [34] HIFI DAC+                       [70] Soekris DAM1021/1121 (I2S)"
    echo -e " [35] HIFI Digi                       [71] Suptronics x400"
    echo -e " [36] HIFI Digi+                      [72] $Green"i-sabre-k2m-for kernel 4.14"$Color_Off"
    echo ""
    echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
    echo ""
    echo -e " [0]  $BBlue"Exit"$Color_Off"
    echo ""
    echo -e " \e[38;5;154m────────────────────────────────────────────\e[0m"
    echo -e ""
    echo -e "$Green"Choose your operation:"$Color_Off"
    echo ""
    read -p  " [0 - 71]:" oper
    echo -e ""
    case $oper in

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
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        2)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        3)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-boss-dac-pcm512x-audio
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        4)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-digione
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        5)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-digione
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        6)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-katana-dac-audio
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        7)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-boss-dac-pcm512x-audio
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        8)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-piano-dac-plus-pcm512x-audio
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        9)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=allo-piano-dac-pcm512x-audio
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        10)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=on
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        11)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        12)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        13)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        14)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        15)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        16)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        17)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        18)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        19)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        20)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        21)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        22)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        23)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        24)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        25)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=dionaudio-loco
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        26)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=dionaudio-loco-v2
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        27)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        28)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        29)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        30)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        31)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        32)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        33)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        34)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        35)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-digi
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        36)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-digi
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        37)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-amp
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        38)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        39)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        40)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        41)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        42)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-digi
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        43)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-digi-pro
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        44)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        45)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac,384k
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        46)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        47)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        48)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        49)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        50)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        51)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-digi-wm8804-audio
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        52)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        53)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=justboom-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        54)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=justboom-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        55)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=justboom-digi
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        56)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        57)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        58)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        59)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        60)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-digi-pro
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        61)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        62)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        63)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        64)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        65)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        66)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=hifiberry-dacplus
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        67)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        68)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rra-digidac1-wm8741-audio
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        69)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        70)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=rpi-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;
        71)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=iqaudio-dac
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;

        72)
            cat > /boot/config.txt <<EOF
gpu_mem=16
dtparam=audio=off
audio_pwm_mode=2
disable_splash=1
hdmi_force_hotplug=1
dtparam=i2c_arm=on
dtparam=i2s=on
dtoverlay=i-sabre-k2m
dtoverlay=pi3-disable-wifi
dtoverlay=pi3-disable-bt
#force_turbo=1
#max_usb_current=1
EOF

            echo -e "the system will restart with the new audio output"
            echo -e "$Yellow Wait... $Color_Off" && sleep 5 ; reboot ;;

        0) exit 0 ;;
        *) echo -e "$Red Invalid choice...$Color_Off" && sleep 2 ; selectd ;;
    esac
}
