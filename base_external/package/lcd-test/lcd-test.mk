
##############################################################
#
# LCD_TEST
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 0d3bef4ad5cbfe62af57647fb574f985bc4f8e90
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_TEST_SITE = git@github.com:chaisuresh/lcd_test.git
LCD_TEST_SITE_METHOD = git
LCD_TEST_GIT_SUBMODULES = YES

define LCD_TEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/ArmbianIO all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LCD_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/make_sample $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
