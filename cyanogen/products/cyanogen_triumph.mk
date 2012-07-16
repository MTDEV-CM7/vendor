# Inherit device configuration for triumph.
$(call inherit-product, device/motorola/triumph/triumph.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_triumph
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := triumph
PRODUCT_MODEL := Triumph
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=triumph BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=Motorola/Caymus_VRGUS/Triumph/Triumph:2.2.2/FROYO/1010_2_039_110607:user/release-keys PRIVATE_BUILD_DESC="Caymus_VRGUS-user 2.2.2 FROYO 1010_2_039 release-keys"

# Extra Triumph overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/triumph

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Release name and versioning
PRODUCT_RELEASE_NAME := Triumph
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
