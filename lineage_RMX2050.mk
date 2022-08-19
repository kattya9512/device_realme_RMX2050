#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
#WITH_GMS := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX2050 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX2050
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX2050
PRODUCT_MODEL := RMX2050

PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := RMX2050
TARGET_VENDOR_DEVICE_NAME := RMX2050

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT := realme/RMX2050/RMX2050:11/RKQ1.200903.002/1654854802224:user/release-keys
    PRIVATE_BUILD_DESC := "RMX2050-user 11 RKQ1.200903.002 1654854802224 release-keys"	
	