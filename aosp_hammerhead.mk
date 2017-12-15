# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_ARCH := arm
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# CM-specific overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/hammerhead/overlay/cm

PRODUCT_COPY_FILES += \
    device/lge/hammerhead/media_codecs_ffmpeg.xml.stub:/system/etc/media_codecs_ffmpeg.xml

# Get the long list of APNs
#PRODUCT_COPY_FILES += \
#    device/sample/etc/apns-full-conf.xml:/system/etc/apns-conf.xml

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_PACKAGES += \
    Terminal \
    WallpaperPicker \
    Launcher3


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := aosp_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys"
$(call inherit-product, device/lge/hammerhead/device.mk)
$(call inherit-product-if-exists, vendor/lge/hammerhead/hammerhead-vendor.mk)

