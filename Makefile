TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = accblocker

accessory_alert_blocker_FILES = Tweak.x
accessory_alert_blocker_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
