#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from samurai device
$(call inherit-product, device/realme/samurai/device.mk)

PRODUCT_DEVICE := samurai
PRODUCT_NAME := omni_samurai
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme X2 Pro
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_samurai-eng 99.87.36 SP2A.220405.004 12 test-keys"

BUILD_FINGERPRINT := realme/twrp_samurai/samurai:99.87.36/SP2A.220405.004/12:eng/test-keys
