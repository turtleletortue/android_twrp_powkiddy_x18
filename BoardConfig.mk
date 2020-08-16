#Device path
DEVICE_PATH := device/powkiddy/x18


# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := vWC200103

# Platform
TARGET_BOARD_PLATFORM := mt8163

# For Mediatek Boot Image Headers
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Kernel
TARGET_PREBUILT_KERNEL := device/powkiddy/x18/kernel
BOARD_MTK_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_MKBOOTIMG_ARGS := --pagesize 2048 --base 0x40078000 --kernel_offset 0x00008000 --ramdisk_offset 0x05f88000 --second_offset 0x00f00000 --tags_offset 0x0df88000 --cmdline "bootopt=64S3,32N2,64N2" --board "vWC200103"

#Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP-Specific
BOARD_SUPPRESS_SECURE_ERASE := true
TW_THEME := landscape_hdpi
DEVICE_RESOLUTION := 720x1080
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1080 
# Screen Rotation
TW_ROTATION := 270
# RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
#BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
#TARGET_DISABLE_TRIPLE_BUFFERING := false

TARGET_INCREASES_COLDBOOT_TIMEOUT := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_INTERNAL_STORAGE_PATH := "/data/media"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard1"
#TW_EXTERNAL_STORAGE_MOUNT_POINT :="sdcard1"
#RECOVERY_SDCARD_ON_DATA := true
RECOVERY_VARIANT := twrp
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 128
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_EXCLUDE_SUPERSU := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := false
TW_NO_EXFAT := false
TW_USE_TOOLBOX := true
# Screenshots
#TW_INCLUDE_FB2PNG := true

# Flip Screen
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true

# MTP
# TW_EXCLUDE_MTP := true
TW_MTP_DEVICE := "/dev/mtp_usb"

# USB Storage
TW_NO_USB_STORAGE := false

# Logs
#TARGET_USES_LOGD := true
#TWRP_INCLUDE_LOGCAT := true

# Exclude APP
TW_EXCLUDE_TWRPAPP := true

# Backup data/media
TW_BACKUP_DATA_MEDIA := true

#Recovery.fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/twrp.fstab

# Touchscreen fix
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_SWAP_XY := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
