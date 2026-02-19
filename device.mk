#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/lake

# A/B OTA
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true \
    RUN_POSTINSTALL_vendor_boot=false \
    POSTINSTALL_OPTIONAL_vendor_boot=true \
    RUN_POSTINSTALL_init_boot=false \
    POSTINSTALL_OPTIONAL_init_boot=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service

PRODUCT_PACKAGES += \
    bootctrl.mt6768

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.mt6768 \
    libgptutils \
    libz \
    libcutils

# OTA packages
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Encryption
PRODUCT_HAS_PLATFORM_SPECIFIC_AOSP_RECOVERY := false
PRODUCT_PACKAGES += \
    hardware.google.pixel.vendor_overlay

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd