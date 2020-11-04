#!/bin/bash
# Start script for unattended configuration of a Raspberry Pi

# NOTE: Originally designed for Raspberry Pi Zero W running Raspbian 10 (buster)
sudo raspi-config nonint do_about
sudo raspi-config nonint do_advanced_menu
sudo raspi-config nonint do_apply_os_config
sudo raspi-config nonint do_audio
sudo raspi-config nonint do_blanking
sudo raspi-config nonint do_boot_behaviour
sudo raspi-config nonint do_boot_order
sudo raspi-config nonint do_boot_rom
sudo raspi-config nonint do_boot_splash
sudo raspi-config nonint do_boot_wait
sudo raspi-config nonint do_camera
sudo raspi-config nonint do_change_locale
sudo raspi-config nonint do_change_pass
sudo raspi-config nonint do_change_timezone
sudo raspi-config nonint do_configure_keyboard
sudo raspi-config nonint do_display_menu
sudo raspi-config nonint do_expand_rootfs
sudo raspi-config nonint do_fan
sudo raspi-config nonint do_finish
sudo raspi-config nonint do_gldriver
sudo raspi-config nonint do_hostname
sudo raspi-config nonint do_i2c
sudo raspi-config nonint do_interface_menu
sudo raspi-config nonint do_internationalisation_menu
sudo raspi-config nonint do_leds
sudo raspi-config nonint do_memory_split
sudo raspi-config nonint do_net_names 
sudo raspi-config nonint do_onewire
sudo raspi-config nonint do_overclock
sudo raspi-config nonint do_overlayfs
sudo raspi-config nonint do_overscan
sudo raspi-config nonint do_performance_menu
sudo raspi-config nonint do_pi4video
sudo raspi-config nonint do_pixdub
sudo raspi-config nonint do_proxy
sudo raspi-config nonint do_proxy_menu
sudo raspi-config nonint do_resolution
sudo raspi-config nonint do_rgpio
sudo raspi-config nonint do_serial
sudo raspi-config nonint do_spi
sudo raspi-config nonint do_ssh
sudo raspi-config nonint do_system_menu
sudo raspi-config nonint do_update
sudo raspi-config nonint do_vnc
sudo raspi-config nonint do_wifi_country
sudo raspi-config nonint do_wifi_ssid_passphrase
sudo raspi-config nonint do_xcompmgr
sudo raspi-config nonint get_autologin
sudo raspi-config nonint get_blanking
sudo raspi-config nonint get_boot_cli
#sudo raspi-config nonint get_bootro_conf
#sudo raspi-config nonint get_bootro_now
#sudo raspi-config nonint get_boot_splash
sudo raspi-config nonint get_boot_wait
sudo raspi-config nonint get_camera
sudo raspi-config nonint get_can_expand
#sudo raspi-config nonint get_config_var
#sudo raspi-config nonint get_current_memory_split
#sudo raspi-config nonint get_fan
#sudo raspi-config nonint get_fan_gpio
#sudo raspi-config nonint get_fan_temp
sudo raspi-config nonint get_hostname
sudo raspi-config nonint get_i2c
#sudo raspi-config nonint get_json_string_val
sudo raspi-config nonint get_leds 
sudo raspi-config nonint get_net_names
sudo raspi-config nonint get_onewire
#sudo raspi-config nonint get_overlay_conf
#sudo raspi-config nonint get_overlay_now
sudo raspi-config nonint get_overscan
sudo raspi-config nonint get_pi4video 
sudo raspi-config nonint get_pi_type
sudo raspi-config nonint get_pixdub
sudo raspi-config nonint get_proxy
sudo raspi-config nonint get_rgpio
sudo raspi-config nonint get_serial
sudo raspi-config nonint get_serial_hw
sudo raspi-config nonint get_spi
sudo raspi-config nonint get_ssh
sudo raspi-config nonint get_vnc
sudo raspi-config nonint get_wifi_country

#define GET_CAN_EXPAND
sudo raspi-config nonint get_can_expand
#define EXPAND_FS
sudo raspi-config nonint do_expand_rootfs
#define GET_HOSTNAME
sudo raspi-config nonint get_hostname
#define SET_HOSTNAME
sudo raspi-config nonint do_hostname %s
#define GET_BOOT_CLI
sudo raspi-config nonint get_boot_cli
#define GET_AUTOLOGIN
sudo raspi-config nonint get_autologin
#define SET_BOOT_CLI
sudo raspi-config nonint do_boot_behaviour B1
#define SET_BOOT_CLIA
sudo raspi-config nonint do_boot_behaviour B2
#define SET_BOOT_GUI
sudo raspi-config nonint do_boot_behaviour B3
#define SET_BOOT_GUIA
sudo raspi-config nonint do_boot_behaviour B4
#define GET_BOOT_WAIT
sudo raspi-config nonint get_boot_wait
#define SET_BOOT_WAIT
sudo raspi-config nonint do_boot_wait %d
#define GET_SPLASH
sudo raspi-config nonint get_boot_splash
#define SET_SPLASH
sudo raspi-config nonint do_boot_splash %d
#define GET_OVERSCAN
sudo raspi-config nonint get_overscan
#define SET_OVERSCAN
sudo raspi-config nonint do_overscan %d
#define GET_CAMERA
sudo raspi-config nonint get_camera
#define SET_CAMERA
sudo raspi-config nonint do_camera %d
#define GET_SSH
sudo raspi-config nonint get_ssh
#define SET_SSH
sudo raspi-config nonint do_ssh %d
#define GET_VNC
sudo raspi-config nonint get_vnc
#define SET_VNC
sudo raspi-config nonint do_vnc %d
#define GET_SPI
sudo raspi-config nonint get_spi
#define SET_SPI
sudo raspi-config nonint do_spi %d
#define GET_I2C
sudo raspi-config nonint get_i2c
#define SET_I2C
sudo raspi-config nonint do_i2c %d
#define GET_SERIAL
sudo raspi-config nonint get_serial
#define GET_SERIALHW
sudo raspi-config nonint get_serial_hw
#define SET_SERIAL
sudo raspi-config nonint do_serial %d
#define GET_1WIRE
sudo raspi-config nonint get_onewire
#define SET_1WIRE
sudo raspi-config nonint do_onewire %d
#define GET_RGPIO
sudo raspi-config nonint get_rgpio
#define SET_RGPIO
sudo raspi-config nonint do_rgpio %d
#define GET_PI_TYPE
sudo raspi-config nonint get_pi_type
#define GET_OVERCLOCK
sudo raspi-config nonint get_config_var arm_freq /boot/config.txt
#define SET_OVERCLOCK
sudo raspi-config nonint do_overclock %s
#define GET_GPU_MEM
sudo raspi-config nonint get_config_var gpu_mem /boot/config.txt
#define GET_GPU_MEM_256
sudo raspi-config nonint get_config_var gpu_mem_256 /boot/config.txt
#define GET_GPU_MEM_512
sudo raspi-config nonint get_config_var gpu_mem_512 /boot/config.txt
#define GET_GPU_MEM_1K
sudo raspi-config nonint get_config_var gpu_mem_1024 /boot/config.txt
#define SET_GPU_MEM
sudo raspi-config nonint do_memory_split %d
#define GET_HDMI_GROUP
sudo raspi-config nonint get_config_var hdmi_group /boot/config.txt
#define GET_HDMI_MODE
sudo raspi-config nonint get_config_var hdmi_mode /boot/config.txt
#define SET_HDMI_GP_MOD
sudo raspi-config nonint do_resolution %d %d
#define GET_WIFI_CTRY
sudo raspi-config nonint get_wifi_country
#define SET_WIFI_CTRY
sudo raspi-config nonint do_wifi_country %s
#define CHANGE_PASSWD
(echo \"%s\" ; echo \"%s\" ; echo \"%s\") | passwd
