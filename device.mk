#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/fuxi/fuxi-vendor.mk)

# Overlay
PRODUCT_PACKAGES += \
    FrameworkResOverlayFuxi \
    SystemUIOverlayFuxi \
    SettingsOverlayFuxi

# Sensors
PRODUCT_PACKAGES += \
    sensor-notifier \
    sensors.xiaomi.v2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_ODM)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
