# تحديث المسار ليتوافق مع خادم GitHub
export THEOS = /Users/runner/theos

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

# إضافة فحص للتأكد من وجود الملفات قبل البدء
all: check_files
check_files:
 @if [ ! -d "SCLAlertView" ]; then echo "Error: SCLAlertView folder missing!"; exit 1; fi
 @if [ ! -d "SupportFile" ]; then echo "Error: SupportFile folder missing!"; exit 1; fi

IGGMain_FILES = MainFile.mm $(wildcard SCLAlertView/*.m) $(wildcard SupportFile/*.m)

include $(THEOS)/makefiles/tweak.mk
