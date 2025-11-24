#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Device Products
PRODUCT_NAME := pb_lisa
PRODUCT_DEVICE := lisa
PRODUCT_MODEL := Xiaomi 11 Lite 5G NE
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device Fingerprint
BuildFingerprint := Xiaomi/lisa_cn/lisa:14/UKQ1.240624.001/OS2.0.1.0.UKOCNXM:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lisa_cn-user 14 UKQ1.240624.001 OS2.0.1.0.UKOCNXM release-keys"