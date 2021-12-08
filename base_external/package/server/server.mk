
##############################################################
#
# SERVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SERVER_VERSION = '5002765c56e2d23919811f4ad49a7f5c96c8463f'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SERVER_SITE = 'git@github.com:cu-ecen-aeld/final-project-chaithra-sharath.git'
SERVER_SITE_METHOD = git
SERVER_GIT_SUBMODULES = YES

define SERVER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/2d-scanner all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SERVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/2d-scanner/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
