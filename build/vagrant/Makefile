export VAGRANT_BOX_UPDATE_CHECK_DISABLE=1
export VAGRANT_CHECKPOINT_DISABLE=1

.PHONY: create bootstrap init build check clean

all: create bootstrap init build


create:
	vagrant up 

bootstrap:
	@echo "## Provisioning"
	vagrant provision --provision-with bootstrap
	vagrant reload

init:
	@echo "## Init build environment"
	vagrant provision --provision-with init

build:
	@echo "## Build Harbor"
	vagrant provision --provision-with build
check:
	@echo "## Syntax check"
	vagrant validate

clean:  
	@echo "## Remove VMs"
	-vagrant destroy -f



