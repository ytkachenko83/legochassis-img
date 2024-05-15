##############################################################
#
# AESDCHAR
#
##############################################################
AESDCHAR_VERSION = 'c8d58084b95c898e2382da5fa72d04071be39122'
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-ytkachenko83.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))