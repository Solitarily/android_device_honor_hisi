LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libhisi
LOCAL_VENDOR_MODULE := true
LOCAL_SHARED_LIBRARIES := libicuuc
LOCAL_C_INCLUDES += external/icu/icu4c/source/common
LOCAL_SRC_FILES := audio.c log.c

include $(BUILD_SHARED_LIBRARY)
