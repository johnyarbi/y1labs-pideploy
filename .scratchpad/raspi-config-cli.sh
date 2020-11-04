#!/bin/bash
# Start script for unattended configuration of a Raspberry Pi

# NOTE: Originally designed for Raspberry Pi Zero W running Raspbian 10 (buster)

# Interfacing options
sudo raspi-config nonint do_camera 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_onewire 0
sudo raspi-config nonint do_rgpio 0
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_ssh 0
sudo raspi-config nonint do_vnc 1

# Interfacing options (serial)
sudo raspi-config nonint do_serial 0    # enable all first
sudo raspi-config nonint do_serial 2    # enable serial interface but not shell login

# International locale settings
sudo raspi-config nonint do_change_locale en_US.UTF-8
sudo raspi-config nonint do_configure_keyboard us
sudo raspi-config nonint do_wifi_country US

# Regional locale settings
sudo raspi-config nonint do_change_timezone US/Central

# Disable raspi-config at boot
sudo raspi-config nonint disable_raspi_config_at_boot
sudo raspi-config nonint do_boot_behaviour B1   # boot CLI, no autologin

# Expand the root filesystem
sudo raspi-config nonint do_expand_rootfs

# Set preferred NIC to use for generating unique ID's (typically wlan0 or eth0)
MY_NIC1=wlan0
MY_NIC2=eth0
THIS_MAC_ADDRESS=XX:XX:XX:XX:XX:XX     # Default to XX:XX:XX:XX:XX:XX in case the NIC doesn't exist
THIS_UNIQUE_ID=XXXXXX               # Default to XXXXXX in case the NIC doesn't exist
if [ -e /sys/class/net/$MY_NIC1/address ]; then
    THIS_MAC_ADDRESS=$(cat /sys/class/net/$MY_NIC1/address)
    THIS_UNIQUE_ID=$(echo -n $THIS_MAC_ADDRESS | cut -d ':' -f 4- --output-delimiter '')
elif [ -e /sys/class/net/$MY_NIC2/address ]; then
    THIS_MAC_ADDRESS=$(cat /sys/class/net/$MY_NIC2/address)
    THIS_UNIQUE_ID=$(echo -n $THIS_MAC_ADDRESS | cut -d ':' -f 4- --output-delimiter '')
fi

# Set hostname based on unique ID
sudo raspi-config nonint do_hostname rpi-$THIS_UNIQUE_ID

# Set password for pi user based on unique ID as base64 encoded (https://www.bing.com/search?q=base64+encode)
THIS_PASSWORD=$(echo -n $THIS_MAC_ADDRESS | base64)
sudo usermod --password $(openssl passwd -1 "$THIS_PASSWORD") pi
