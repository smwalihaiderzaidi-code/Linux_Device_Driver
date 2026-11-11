UBUNTU_IP = 10.190.48.241
USER = ubuntu
WIN_DIR = C:/LinuxShare/Linux_Device_Driver
LINUX_DIR = /home/ubuntu/Linux_Device_Driver
SCP = C:/Windows/Sysnative/OpenSSH/scp.exe

.PHONY: push pull help

# Windows to Ubuntu
push:
	"$(SCP)" -r "$(WIN_DIR)"/* $(USER)@$(UBUNTU_IP):$(LINUX_DIR)/

# Ubuntu to Windows
pull:
	"$(SCP)" -r $(USER)@$(UBUNTU_IP):$(LINUX_DIR)/* "$(WIN_DIR)"/

# Show available commands
help:
	@echo push - Transfer Windows files to Ubuntu
	@echo pull - Transfer Ubuntu files to Windows