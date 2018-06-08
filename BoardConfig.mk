DEVICE_FOLDER := device/axioo/picopad_s3plus
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/axioo/picopad_s3plus/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := picopad_s3plus

BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --dt device/axioo/picopad_s3plus/recovery/recovery-dt.img

# Partitions & Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 15728640
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6025100288
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_CACHEIMAGE_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_PREBUILT_KERNEL := device/axioo/picopad_s3plus/prebuilt/kernel
TARGET_RECOVERY_FSTAB = device/axioo/picopad_s3plus/recovery/root/twrp.fstab
TARGET_RECOVERY_INITRC := device/axioo/picopad_s3plus/recovery/root/init.recovery.sc8830.rc

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

BOARD_HAS_NO_SELECT_BUTTON := true

#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_17x33.h\"
DEVICE_RESOLUTION := 800x1280
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true

#TWRP settings
TW_THEME := portrait_hdpi
TW_NO_SCREEN_BLANK := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone0/temp
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/devices/f53f8000.adi_bus/sprd_backlight/backlight/sprd_backlight/brightness
TW_MAX_BRIGHTNESS := 255
#TW_INTERNAL_STORAGE_PATH := "/data/media/0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
#axioo theme
#TW_CUSTOM_THEME := device/axioo/picopad_s3plus/recovery/twres-axioo
TW_EXCLUDE_SUPERSU := true
#TWRP_EVENT_LOGGING := true

