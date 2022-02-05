# Boot animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH  := 1920

# Inherit device configuration.
$(call inherit-product, device/lenovo/b8080f/full_b8080f.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE       := b8080f
PRODUCT_NAME         := lineage_b8080f
PRODUCT_BRAND        := Lenovo
PRODUCT_MODEL        := B8080-F
PRODUCT_MANUFACTURER := LENOVO

