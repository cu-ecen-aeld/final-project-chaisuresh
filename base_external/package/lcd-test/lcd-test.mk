
##############################################################
#
# LCD_TEST
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LCD_TEST_VERSION = 1364a3601b488c8b1e79ba3bd100f0889c24f15f 
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LCD_TEST_SITE = git@github.com:cu-ecen-aeld/final-project-chaithra-sharath.git
LCD_TEST_SITE_METHOD = git
LCD_TEST_GIT_SUBMODULES = YES

define LCD_TEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/LCD-nokia5110 all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LCD_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/LCD-nokia5110/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
