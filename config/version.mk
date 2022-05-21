#
#   Copyright (C) 2022
#   SPDX-License-Identifier: Apache-2.0
#

PRIME_BASE_VERSION := 2.5

PRIME_BUILD_DATE := $(shell date +%d%m%Y)
PRIME_BUILD_TIME := $(shell date +%H%M)

PRIME_BUILD_VERSION := $(PRIME_BASE_VERSION)
PRIME_VERSION := Prime-$(PRIME_BASE_VERSION)-$(PRIME_BUILD_DATE)-$(PRIME_BUILD_TIME)
PRIME_DISPLAY_VERSION := $(PRIME_BUILD_VERSION)

TARGET_PRODUCT_SHORT := $(subst prime_,,$(PRIME_BASE_VERSION))

PRODUCT_PRODUCT_PROPERTIES += \
    com.prime.version=$(PRIME_VERSION) \
    com.prime.base.version=$(PRIME_BASE_VERSION) \
    com.prime.display.version=$(PRIME_DISPLAY_VERSION) \
    com.prime.build.version=$(PRIME_BUILD_VERSION) \
    com.prime.build_date=$(PRIME_BUILD_DATE) \
    com.prime.build_time=$(PRIME_BUILD_TIME)
