export THEOS = /opt/theos

TARGET := iphone:clang:latest:14.0
ARCHS = arm64

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = IGGMain

IGGMain_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText
IGGMain_LDFLAGS += -F. -framework JRMemory
IGGMain_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
IGGMain_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value

IGGMain_FILES = MainFile.mm $(wildcard SCLAlertView/*.m) $(wildcard SupportFile/*.m)

include $(THEOS)/makefiles/tweak.mk
