#
# Copyright (C) 2016 The CyanogenMod Project
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

DEVICE_PATH := device/xiaomi/ido

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := msm8916

# Architecture
TARGET_BOARD_SUFFIX := _64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# ANT
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Asserts
TARGET_OTA_ASSERT_DEVICE := ido

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
COMMON_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CMHW
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw
BOARD_HARDWARE_CLASS += hardware/cyanogen/cmhw
BOARD_USES_CYANOGEN_HARDWARE := true

# CNE
BOARD_USES_QCNE := true
TARGET_LDPRELOAD := libNimsWrap.so

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_HAVE_SIGNED_VENUS_FW := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8916
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8916

# Kernel
BOARD_DTBTOOL_ARGS := -2

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 sched_enable_hmp=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

ENABLE_CPUSETS := true

TARGET_KERNEL_SOURCE := kernel/xiaomi/ido
TARGET_KERNEL_CONFIG := cyanogenmod_ido_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Lights
BOARD_LIGHTS_VARIANT := aw2013
TARGET_PROVIDES_LIBLIGHT := true

# Malloc
MALLOC_IMPL := dlmalloc

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
# /proc/partitions * 2 * BLOCK_SIZE (512) = size in bytes
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 274726912
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12066978816 # (12066995200-16384)
BOARD_FLASH_BLOCK_SIZE := 131072 # blockdev --getbsz /dev/block/mmcblk0p19

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
TARGET_POWERHAL_VARIANT := qcom
TARGET_RIL_VARIANT := caf

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

include device/qcom/sepolicy/sepolicy.mk

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/xiaomi/ido/BoardConfigVendor.mk
