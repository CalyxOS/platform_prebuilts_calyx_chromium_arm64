ifeq ($(TARGET_ARCH),arm64)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := TrichromeLibrary
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := external/calyx/chromium/certs/chromium
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_SRC_FILES := TrichromeLibrary6432.apk
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TrichromeWebView
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := external/calyx/chromium/certs/chromium
LOCAL_MULTILIB := both
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support \
        TrichromeLibrary
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions
LOCAL_OVERRIDES_PACKAGES := webview
LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_SRC_FILES := TrichromeWebView6432.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TrichromeChrome
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := external/calyx/chromium/certs/chromium
LOCAL_MULTILIB := both
LOCAL_REQUIRED_MODULES := \
        TrichromeLibrary
LOCAL_OVERRIDES_PACKAGES := Browser2 QuickSearchBox
LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_SRC_FILES := universal.apk
include $(BUILD_PREBUILT)

endif
