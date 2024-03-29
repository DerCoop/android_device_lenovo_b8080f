# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
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

# inherit from common b8080f
include device/lenovo/b8080f-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/b8080f

# Kernel
TARGET_KERNEL_CONFIG := lineage_b8080f_defconfig

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_b8080f

# NFC
# include $(COMMON_PATH)/nfc/pn547/board.mk

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# inherit from the proprietary version
include vendor/lenovo/b8080f/BoardConfigVendor.mk

# FAILED: 
#hardware/ril/reference-ril/Android.mk: error: "libreference-ril (SHARED_LIBRARIES android-arm) missing libril (SHARED_LIBRARIES android-arm)" 
#maybe some dependency because this was copied from samsung s3neo
#ALLOW_MISSING_DEPENDENCIES := true
