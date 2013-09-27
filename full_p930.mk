# GSM stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/config/spn-conf.xml:system/etc/spn-conf.xml

$(call inherit-product, device/lge/iprj-common/iprj.mk)

## These are different between models
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/fstab.iprj:root/fstab.iprj

## Model specific files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.iprj.rc:root/init.iprj.rc

PRODUCT_PACKAGES += \
    Stk

PRODUCT_NAME := full_p930
PRODUCT_DEVICE := p930
PRODUCT_MODEL := LG-P930

# Kernel inline build
TARGET_KERNEL_CONFIG := cyanogenmod_p930_defconfig
TARGET_VARIANT_CONFIG := cyanogenmod_p930_defconfig
TARGET_SELINUX_CONFIG := cyanogenmod_p930_defconfig

$(call inherit-product-if-exists, vendor/lge/p930/p930-vendor.mk)
