$(call inherit-product, device/avus/a84/BoardConfig.mk)
$(call inherit-product, device/avus/a84/AndroidBoard.mk)
$(call inherit-product, device/avus/a84/AndroidProducts.mk)

ifeq (TARGET_PREBUILT_KERNEL,)
	TARGET_PREBUILT_KERNEL := device/avus/a84/kernel/zImage
endif

PRODUCT_COPY_FILES += \
    device/avus/a84/kernel/zImage:kernel