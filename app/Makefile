include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = testmessageport
testmessageport_FILES = main.m XXAppDelegate.m XXRootViewController.m
testmessageport_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"testmessageport\"" || true
