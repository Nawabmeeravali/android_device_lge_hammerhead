#
# Copyright 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common AOSMP stuff.
TARGET_ARCH := arm
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_COPY_FILES += vendor/aosmp/prebuilt/common/media/AOSMP-1080.zip:system/media/bootanimation.zip

# Inherit some common AOSMP stuff.
$(call inherit-product, vendor/aosmp/config/common_full_phone.mk)

PRODUCT_NAME := aosmp_hammerhead
PRODUCT_DEVICE := hammerhead
PRODUCT_BRAND := lge
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys"

$(call inherit-product, device/lge/hammerhead/device.mk)
$(call inherit-product-if-exists, vendor/lge/hammerhead/device-vendor.mk)

#$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

PRODUCT_NAME := aosp_hammerhead

PRODUCT_PACKAGES += \
    Launcher3

