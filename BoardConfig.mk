USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/mediatek/mt6592/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := mt6592
TARGET_NO_BOOTLOADER := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

TARGET_BOOTLOADER_BOARD_NAME := mt6592

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 947912704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4303355904
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_SEPOLICY_DIRS := \
       device/avus/a84/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       file_contexts

TARGET_PREBUILT_KERNEL := device/avus/a84/kernel/zImage
TARGET_RECOVERY_FSTAB := device/avus/a84/recovery.fstab

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_CUSTOM_BOOTIMG_MK := device/avus/a84/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --board 1400865686

TARGET_KMODULES := true

BOARD_EGL_CFG := device/avus/a84/egl.cfg

BOARD_RIL_CLASS := ../../../device/avus/a84/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Use old sepolicy version
#POLICYVERS := 26

# Surfaceflinger: avoid build error
LEGACY_NEEDS_PUBLIC_LAYERVECTOR := true