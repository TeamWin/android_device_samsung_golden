TARGET_SPECIFIC_HEADER_PATH := device/samsung/golden/include
TARGET_OTA_ASSERT_DEVICE := golden,i8190,GT-I8190

# Platform 
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := DB8520H
TARGET_SOC := u8500
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5064622080
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/golden
TARGET_KERNEL_CONFIG := golden_defconfig
BOARD_KERNEL_CMDLINE :=
TARGET_USE_ST_ERICSSON_KERNEL := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_RECOVERY_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x02000000

# TODO add a real fallback kernel in the event source is missing. this one is for recovery
TARGET_PREBUILT_KERNEL := device/samsung/golden/recovery/recovery_kernel

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/golden/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_HWCOMPOSER := true
BOARD_USE_SYSFS_VSYNC_NOTIFICATION := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# Camera
BOARD_USES_PROPRIETARY_LIBCAMERA := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
USE_BLUETOOTH_SAP := true

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4334_B2
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin_b2"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin_b2"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin_b2"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin_b2 nvram_path=/system/etc/wifi/nvram_net.txt_GPIO4"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin_b2 nvram_path=/system/etc/wifi/nvram_net.txt_GPIO4"
WIFI_BAND                        := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI          := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# USB Mounting
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

# RIL
BOARD_USES_LIBSECRIL_STUB := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/golden/recovery/recovery_kernel
TARGET_RECOVERY_INITRC = device/samsung/golden/recovery/root/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/golden/recovery/graphics.c
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_MISC_PARTITION := true

# twrp stuffs
# TODO recovery/twrp-graphics.c: please see the file for comments
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/golden/recovery/twrp-graphics.c
DEVICE_RESOLUTION := 480x800
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file

TW_INCLUDE_CRYPTO_SAMSUNG := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p25"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,discard,noauto_da_alloc,journal_async_commit,errors=panic    wait,check"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
