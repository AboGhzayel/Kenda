ARCHS = armv7 arm64 
include theos/makefiles/common.mk

BUNDLE_NAME = Kenda
Kenda_FILES = Kenda.mm KendaHeader.mm
Kenda_INSTALL_PATH = /Library/PreferenceBundles
Kenda_FRAMEWORKS = UIKit
Kenda_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Kenda.plist$(ECHO_END)
