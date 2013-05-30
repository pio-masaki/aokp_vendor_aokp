 # Inherit AOSP device configuration for dlx.
$(call inherit-product, device/htc/dlx/device_dlx.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/aokp/configs/vzw.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/dlx

# Setup device specific product configuration.
PRODUCT_NAME := aokp_dlx
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := dlx
PRODUCT_MODEL := HTC6435LVW
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_dlx BUILD_FINGERPRINT=verizon_wwe/dlx/dlx:4.1.1/JRO03C/147796.1:user/release-keys PRIVATE_BUILD_DESC="2.06.605.1 CL147796 release-keys" BUILD_NUMBER=123160

# boot animation
PRODUCT_COPY_FILES += \
vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip

