# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

# Inherit some common Evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_tablet_wifionly.mk)

$(call inherit-product, $(LOCAL_PATH)/aosp_gt58wifi.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-ev

# Boot animation
BOOT_ANIMATION_SIZE := xga

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ev_gt58wifi
PRODUCT_MODEL := SM-T350

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gt58wifixx-user 7.1.1 NMF26X T350XXU1CQJ5 release-keys"

BUILD_FINGERPRINT := "samsung/gt58wifixx/gt58wifi:7.1.1/NMF26X/T350XXU1CQJ5:user/release-keys"

# Set up the product codename & MOTD.
PRODUCT_CODENAME := sedo
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Samsung Galaxy A Tablet\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

