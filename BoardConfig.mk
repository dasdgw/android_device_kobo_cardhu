USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/kobo/cardhu/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

TARGET_BOOTLOADER_BOARD_NAME := cardhu

#BOARD_KERNEL_CMDLINE := tegraid=30.1.3.0.0 mem=1022M@2048M commchip_id=0 androidboot.serialno=T416A3B107179 androidboot.CPUserialno=015d4a82030bf602 androidboot.commchip_id=0 video=tegrafb no_console_suspend=1 console=ttyS0,115200n8 debug_uartport=lsport,0 usbcore.old_scheme_first=1 lp0_vec=8192@0xbddf9000 tegra_fbmem=18436800@0xacc23000 core_edp_mv=1300 audio_codec=wm8903 board_info=c5b:a01:4:41:0 tegraboot=sdmmc bootloader_ver=B01.24.20130911 pcb_ver=03 gpt gpt_sector=30535679 modem_id=0 android.kerneltype=normal
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14210301952
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/platform/sdhci-tegra.3/by-name/UDA
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/platform/sdhci-tegra.3/by-name/UDA

BOARD_NO_PAGE_FLIPPING := true

#BOARD_WPA_SUPPLICANT_DRIVER := WEXT

BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4334

#TARGET_PREBUILT_KERNEL := device/kobo/cardhu/kernel

TARGET_KERNEL_CONFIG := cyanogenmod_cardhu_defconfig
TARGET_KERNEL_SOURCE := kernel/kobo/cardhu/

# SELINUX Defines
BOARD_SEPOLICY_DIRS := \
    device/kobo/cardhu/selinux

BOARD_SEPOLICY_UNION := \
# todo add files in selinux folder

BOARD_HAS_NO_SELECT_BUTTON := true
