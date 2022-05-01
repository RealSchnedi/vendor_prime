#
#   Copyright (C) 2022
#   SPDX-License-Identifier: Apache-2.0
#

PRODUCT_BRAND ?= Prime

# Extras
$(call inherit-product, vendor/extras/extras.mk)

# GMS
$(call inherit-product, vendor/gms/products/gms.mk)

# Telephony
$(call inherit-product, vendor/prime/telephony/telephony.mk)

# Versiom
$(call inherit-product, vendor/prime/config/version.mk)

# Apps
PRODUCT_PACKAGES += \
    SimpleDeviceConfig

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Java debug info
USE_DEX2OAT_DEBUG := false
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# One-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

# Overlay
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/prime/overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/prime/overlay

-include $(WORKSPACE)/build_env/image-auto-bits.mk
