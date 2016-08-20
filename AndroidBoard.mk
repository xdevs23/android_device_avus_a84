LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := a84initfiles
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := \
	/rootdir/default.prop \
	/rootdir/enableswap.sh \
	/rootdir/file_contexts \
	/rootdir/fstab \
	/rootdir/fstab.fat.nand \
	/rootdir/fstab.nand \
	/rootdir/init.aee.customer.rc \
	/rootdir/init.charging.rc \
	/rootdir/init.environ.rc \
	/rootdir/init.modem.rc \
	/rootdir/init.no_ssd.rc \
	/rootdir/init.project.rc \
	/rootdir/init.protect.rc \
	/rootdir/init.superuser.rc \
	/rootdir/init.trace.rc \
	/rootdir/init.usb.rc \
	/rootdir/init.xdvs.rc \
	/rootdir/init.xlog.rc \
	/rootdir/property_contexts \
	/rootdir/seapp_contexts \
	/rootdir/sepolicy \
	/rootdir/ueventd.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)