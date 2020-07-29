LOCAL_PATH := $(my-dir)

#=======================================
# OsmAnd navigation
include $(CLEAR_VARS)

LOCAL_MODULE := OsmAnd
LOCAL_MODULE_OWNER := capricorn_car 
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAG := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := CarMapsPlaceholder 

include $(BUILD_PREBUILT)

#========================================
# F-Droid
include $(CLEAR_VARS)

LOCAL_MODULE := F-Droid
LOCAL_MODULE_OWNER := capricorn_car 
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAG := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

#========================================
# OpenConnect
include $(CLEAR_VARS)

LOCAL_MODULE := OpenConnect
LOCAL_MODULE_OWNER := capricorn_car 
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAG := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_BUILT_MODULE_STEM := package.apk
ifeq ($(TARGET_ARCH),arm)
  LOCAL_PREBUILT_JNI_LIBS := \
    @lib/armeabi-v7a/libopenconnect.so \
    @lib/armeabi-v7a/libstoken.so
else ifeq ($(TARGET_ARCH),x86)
  LOCAL_PREBUILT_JNI_LIBS := \
    @lib/x86/libopenconnect.so \
    @lib/x86/libstoken.so
else ifeq ($(TARGET_ARCH),x86_64)
  LOCAL_PREBUILT_JNI_LIBS := \
    @lib/x86_64/libopenconnect.so \
    @lib/x86_64/libstoken.so
else ifeq ($(TARGET_ARCH),arm64)
  LOCAL_PREBUILT_JNI_LIBS := \
    @lib/armeabi-v8a/libopenconnect.so \
    @lib/armeabi-v8a/libstoken.so
endif # TARGET_ARCH
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

