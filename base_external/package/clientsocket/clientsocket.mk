
##############################################################
#
# CLIENTSOCKET
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CLIENTSOCKET_VERSION = '5002765c56e2d23919811f4ad49a7f5c96c8463f'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CLIENTSOCKET_SITE = 'git@github.com:cu-ecen-aeld/final-project-chaithra-sharath.git'
CLIENTSOCKET_SITE_METHOD = git
CLIENTSOCKET_GIT_SUBMODULES = YES

define CLIENTSOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define CLIENTSOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/client/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
