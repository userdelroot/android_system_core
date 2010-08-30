LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= logwrapper.c

ifeq ($(filter $(BOARD_HIJACK_EXECUTABLES),logwrapper),)
LOCAL_MODULE := logwrapper
else
LOCAL_MODULE := logwrapper.bin
fi

LOCAL_STATIC_LIBRARIES := liblog
include $(BUILD_EXECUTABLE)
