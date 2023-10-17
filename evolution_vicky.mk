#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vicky device
$(call inherit-product, device/motorola/vicky/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

PRODUCT_NAME := evolution_penang
PRODUCT_DEVICE := vicky
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g72

# Evolution X stuff
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES = 1080

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=penang_g \
    PRIVATE_BUILD_DESC="penang_g-user 11 T1TPS33.1-73-2-2 f8b57 release-keys"

BUILD_FINGERPRINT := motorola/penang_g/vicky:11/T1TPS33.1-73-2-2/f8b57:user/release-keys
