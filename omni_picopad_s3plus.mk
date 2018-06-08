## Specify phone tech before including full_phone
#$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := picopad_s3plus

# Inherit from our custom product configuration.
#$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/axioo/picopad_s3plus/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := picopad_s3plus
PRODUCT_NAME := omni_picopad_s3plus
PRODUCT_BRAND := axioo
PRODUCT_MODEL := picopad_s3plus
PRODUCT_MANUFACTURER := axioo

