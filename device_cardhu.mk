#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/kobo/cardhu/cardhu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/kobo/cardhu/overlay

LOCAL_PATH := device/kobo/cardhu
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
#\
#    $(LOCAL_PATH)/recovery/init.recovery.cardhu.rc:root/init.recovery.cardhu.rc
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init.cardhu.rc:root/init.cardhu.rc \
	$(LOCAL_PATH)/ramdisk/fstab.cardhu:root/fstab.cardhu \
	$(LOCAL_PATH)/ramdisk/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.tf.rc:root/init.tf.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.cardhu.rc:root/ueventd.cardhu.rc \
	$(LOCAL_PATH)/recovery/init.recovery.cardhu.rc:root/init.recovery.cardhu.rc

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_cardhu
PRODUCT_DEVICE := cardhu
