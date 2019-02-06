#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#               2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/motorola/montana

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8937

# Asserts
TARGET_OTA_ASSERT_DEVICE := montana,montana_retail

# Init
TARGET_INIT_VENDOR_LIB := libinit_montana
TARGET_RECOVERY_DEVICE_MODULES := libinit_montana

# Kernel
BOARD_KERNEL_LZ4C_DT := true
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-androidkernel-
TARGET_KERNEL_CONFIG := montana_defconfig

# Manifest
DEVICE_MANIFEST_FILE := $(PLATFORM_PATH)/configs/manifest.xml

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616    #    16484 * 1024 mmcblk0p38
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456      #   262144 * 1024 mmcblk0p52
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3623878656    #  3538944 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26403126272 # 25784303 * 1024 mmcblk0p54

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Shims
TARGET_LD_SHIM_LIBS_DEVICE := \
/system/vendor/lib/libmmcamera_ppeiscore.so|libshim_camera.so

# inherit from motorola msm8953-common
-include device/motorola/msm8953-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/montana/BoardConfigVendor.mk
