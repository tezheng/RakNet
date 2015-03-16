
# APP_PROJECT_PATH := $(call my-dir)
# APP_BUILD_SCRIPT := $(APP_PROJECT_PATH)/Android.mk

APP_ABI 		:= armeabi-v7a
APP_CPPFLAGS 	:= -fexceptions -frtti
APP_PLATFORM 	:= android-14
APP_STL 		:= gnustl_static
APP_CPPFLAGS	+= -std=c++11
NDK_TOOLCHAIN_VERSION	:= clang3.3

#APP_MODULES     :=
#APP_SHORT_COMMANDS :=
#APP_PIE :=
#NDK_TOOLCHAIN_VERSION :=
