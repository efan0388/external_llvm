LOCAL_PATH := $(call my-dir)

# For the device only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=	\
	ARMGenAsmWriter.inc	\
	ARMGenInstrNames.inc	\
	ARMGenRegisterNames.inc	\
	ARMGenRegisterInfo.h.inc

TBLGEN_TD_DIR := $(LOCAL_PATH)/..

LOCAL_SRC_FILES :=	\
	ARMAsmPrinter.cpp	\
	ARMInstPrinter.cpp	\
	ARMMCInstLower.cpp
	
LOCAL_C_INCLUDES +=	\
	$(LOCAL_PATH)/..

LOCAL_MODULE:= libLLVMARMAsmPrinter

include $(LLVM_DEVICE_BUILD_MK)
include $(LLVM_TBLGEN_RULES_MK)
include $(BUILD_STATIC_LIBRARY)
