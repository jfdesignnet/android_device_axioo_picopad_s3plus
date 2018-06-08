TARGET_BOARD := picopad_s3plus
BOARDDIR := device/axioo/$(TARGET_BOARD)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/axioo/picopad_s3plus/picopad_s3plus-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/axioo/picopad_s3plus/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/axioo/picopad_s3plus/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

$(call inherit-product, build/target/product/full.mk)

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=7
PRODUCT_NAME := full_picopad_s3plus
PRODUCT_DEVICE := picopad_s3plus

PRODUCT_COPY_FILES += \
	device/axioo/picopad_s3plus/rootdir/init.rc:root/init.rc \
	device/axioo/picopad_s3plus/rootdir/init.recovery.sc8830.rc:root/init.recovery.sc8830.rc \
	device/axioo/picopad_s3plus/rootdir/init.recovery.usb.rc:root/init.recovery.usb.rc \
	device/axioo/picopad_s3plus/recovery/root/fstab.sc8830:root/fstab.sc8830  \
	device/axioo/picopad_s3plus/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
	device/axioo/picopad_s3plus/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.goldfish \
    root/init.goldfish.rc \
    root/ueventd.goldfish.rc \
    recovery/root/fstab.goldfish
    
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	persist.mtk.aee.aed=on \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	persist.service.acm.enable=0 \
	ro.oem_unlock_supported=1 \
	persist.sys.usb.config=mtp     
