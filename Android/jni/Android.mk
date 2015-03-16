
MK_FILE_PATH := $(call my-dir)
LOCAL_PATH := $(realpath $(MK_FILE_PATH)/../../)

include $(CLEAR_VARS)

LOCAL_MODULE := RekNet
LOCAL_CPP_EXTENSION := .cxx .cpp .cc

SOURCE_PATH			:=	$(LOCAL_PATH)/Source/
MODULE_PATH			:=	$(LOCAL_PATH)/DependentExtensions/

RAKNET_FILES		:=	$(wildcard $(SOURCE_PATH)*.cpp)
LOBBY_FILES			:=  $(wildcard $(MODULE_PATH)Lobby2/*.cpp)

LOCAL_C_INCLUDES	:=	$(SOURCE_PATH)

# swig module
LOCAL_SRC_FILES		:=  $(MODULE_PATH)/Swig/SwigOutput/CplusDLLIncludes/RakNet_wrap.cxx

# raknet module
LOCAL_SRC_FILES		+=  $(RAKNET_FILES)

# lobby module
# LOCAL_SRC_FILES		+=  $(LOBBY_FILES)

LOCAL_CPPFLAGS		:= -O3

LOCAL_CFLAGS		:=

# LOCAL_LDLIBS		:=	-llog -lz -landroid

LOCAL_LDFLAGS		:=

include $(BUILD_SHARED_LIBRARY)
# include $(BUILD_STATIC_LIBRARY)
