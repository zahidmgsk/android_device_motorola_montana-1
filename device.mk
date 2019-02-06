#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 The LineageOS Project
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

# Audio
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/vendor/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_ext_spkr.conf:system/vendor/etc/audio_ext_spkr.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \

# Camera Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8937_mot_montana_camera.xml:system/etc/camera/msm8937_mot_montana_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_l5695f60_chromatix.xml:system/etc/camera/mot_ov5695_l5695f60_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3_chromatix.xml:system/etc/camera/s5k3p3_chromatix.xml

# Camera shim
PRODUCT_PACKAGES += \
    libshim_camera

# Media Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_8956.xml:system/vendor/etc/media_codecs_8956.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_profiles_8956.xml:system/vendor/etc/media_profiles_8956.xml

# NFC Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/vendor/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/vendor/etc/libnfc-nxp.conf

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom_device.rc \
    init.mmi_device.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/vendor/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/vendor/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Thermal
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/thermal-engine-montana.conf:system/vendor/etc/thermal-engine.conf

# Inherit from motorola msm8953-common
TARGET_BOARD_PLATFORM := msm8937
$(call inherit-product, device/motorola/msm8953-common/common.mk)
