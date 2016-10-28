# Copyright (C) 2016 halogenOS
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


PRODUCT_NAME := XOS_a84
PRODUCT_DEVICE := a84
PRODUCT_MANUFACTURER := Avus
PRODUCT_BRAND := Avus
PRODUCT_BOARD := MT6592

PRODUCT_GMS_CLIENTID_BASE := android-mediatek

TARGET_VENDOR_PRODUCT_NAME := a84
TARGET_VENDOR_DEVICE_NAME := a84
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=a84 PRODUCT_NAME=a84

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := Avus


$(call inherit-product, device/avus/a84/device.mk)

# Inherit some common halogenOS stuff.
$(call inherit-product, vendor/xos/config/common.mk)