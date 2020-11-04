#!/bin/bash
# Start script for unattended configuration of a Raspberry Pi

# NOTE: Originally designed for Raspberry Pi Zero W running Raspbian 10 (buster)

# Set preferred NIC to use for generating unique ID's (typically wlan0 or eth0)
MY_NIC1=wlan0
MY_NIC2=eth0
THIS_UNIQUE_ID=XXXXXX               # Default to XXXXXX in case the NIC doesn't exist
THIS_MAC_ADDRESS=XX:XX:XX:XX:XX:XX     # Default to XX:XX:XX:XX:XX:XX in case the NIC doesn't exist
if [ -e /sys/class/net/$MY_NIC1/address ]; then
    THIS_UNIQUE_ID=$(cat /sys/class/net/$MY_NIC1/address | cut -d ':' -f 4- --output-delimiter '')
elif [ -e /sys/class/net/$MY_NIC2/address ]; then
    THIS_UNIQUE_ID=$(cat /sys/class/net/$MY_NIC2/address | cut -d ':' -f 4- --output-delimiter '')
fi

# Set hostname based on unique ID
sudo raspi-config nonint do_hostname rpi-$THIS_UNIQUE_ID

# Set password for pi user based on unique ID as base64 encoded
THIS_PASSWORD=$(echo -n $THIS_MAC_ADDRESS | base64)
sudo usermod --password $(openssl passwd -1 "$THIS_PASSWORD") pi

# Interfacing options
sudo raspi-config nonint do_camera 1
sudo raspi-config nonint do_i2c 1
sudo raspi-config nonint do_onewire 1
sudo raspi-config nonint do_rgpio 1
sudo raspi-config nonint do_spi 1
sudo raspi-config nonint do_ssh 1
sudo raspi-config nonint do_vnc 0

# Interfacing options (serial)
sudo raspi-config nonint do_serial 0    # disable first
sudo raspi-config nonint do_serial 2    # enable serial port but not for console access

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
