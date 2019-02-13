#
# Copyright (C) 2017 Fernando Von Arx <fer.vonarx@gmail.com>
# Copyright (C) 2017 Jesse Chan <cjx123@outlook.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

# Inherit device configuration
$(call inherit-product, device/samsung/herolte/device_herolte.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_herolte
PRODUCT_DEVICE := herolte
PRODUCT_MODEL := SM-G930F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=heroltexx \
    PRIVATE_BUILD_DESC="heroltexx-user 8.0.0 R16NW G930FXXU2ERD5 release-keys"

BUILD_FINGERPRINT := samsung/heroltexx/herolte:8.0.0/R16NW/G930FXXU2ERD5:user/release-keys