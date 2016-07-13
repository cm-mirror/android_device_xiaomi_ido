$(call inherit-product, device/xiaomi/ido/full_ido.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ido

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

TARGET_BOARD_PLATFORM_VARIANT := msm8939

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ido
PRODUCT_NAME := cm_ido
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := ido
PRODUCT_MANUFACTURER := xiaomi
