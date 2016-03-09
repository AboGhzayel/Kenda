ARCHS = armv7 arm64
include theos/makefiles/common.mk
THEOS_BUILD_DIR = Packages
export ADDITIONAL_LDFLAGS = -Wl,-segalign,4000
TWEAK_NAME = Kenda
Kenda_FILES = Tweak.xm 
Kenda_FRAMEWORKS = UIKit
include $(THEOS_MAKE_PATH)/tweak.mk
after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += Kenda
include $(THEOS_MAKE_PATH)/aggregate.mk

