MAJORVER := "1"
MINORVER := "3"
MICROVER := "0"
VERSION := $(MAJORVER).$(MINORVER).$(MICROVER)
COMMIT := $(shell git rev-parse --short HEAD)
all: checkpoint ftp goldleaf hkt hbloader hbmenu ams nxshell kipselect sigpatches sin

clean:
	$(MAKE) -C Checkpoint clean
	$(MAKE) -C ftpd clean
	$(MAKE) -C hekate clean
	$(MAKE) -C Goldleaf/Goldleaf
	# $(MAKE) -C nx-hbloader clean
	# $(MAKE) -C nx-hbmenu clean
	# $(MAKE) -C KipSelect clean
	$(MAKE) -f singularite clean
	@rm -rf singularite*.zip
	@rm -rf NX-Shell.nro
	@rm -rf Kip_Select.nro
	@rm -rf fusee-primary.bin
	@rm -rf ams.zip
	@rm -rf patches.zip
	@rm -rf Goldtree.exe

ams:
	# @$(MAKE) -C Atmosphere dist
	@echo "---------------------------------------------------------------"
	@echo "Downloading Atmosphere, because compiling may not be possible."
	@echo "Visit https://github.com/Atmosphere-NX/Atmosphere for help!"
	@echo "---------------------------------------------------------------"
	@[ -f ams.zip ] || wget "https://github.com/Atmosphere-NX/Atmosphere/releases/download/0.9.2/atmosphere-0.9.2-master-6f85b11f+hbl-2.1+hbmenu-3.0.1.zip" -O ams.zip
	@[ -f fusee-primary.bin ] || wget "https://github.com/Atmosphere-NX/Atmosphere/releases/download/0.9.2/fusee-primary.bin" -O fusee-primary.bin

nxshell:
	@echo "---------------------------------------------------------------"
	@echo "Downloading NX-Shell, because compiling may not be possible."
	@echo "Visit https://github.com/joel16/NX-Shell for help!"
	@echo "---------------------------------------------------------------"
	@[ -f NX-Shell.nro ] || wget "https://github.com/joel16/NX-Shell/releases/download/2.00/NX-Shell.nro" -O NX-Shell.nro

kipselect:
	# @$(MAKE) -C KipSelect
	@echo "---------------------------------------------------------------"
	@echo "Downloading KipSelect, because compiling may not be possible."
	@echo "Visit https://github.com/Sciguy429/KipSelect for help!"
	@echo "---------------------------------------------------------------"
	@[ -f Kip_Select.nro ] || wget "https://github.com/Sciguy429/KipSelect/releases/download/3.0.9/Kip_Select_V3.0.9.nro" -O Kip_Select.nro

checkpoint:
	@$(MAKE) -C Checkpoint switch

ftp:
	@$(MAKE) -C ftpd/ nro

hkt:
	@$(MAKE) -C hekate

goldleaf:
	@$(MAKE) -C Goldleaf/Goldleaf
	@echo "---------------------------------------------------------------"
	@echo "Downloading Goldtree, because compiling may not be possible."
	@echo "Visit https://github.com/XorTroll/Goldleaf for help!"
	@echo "---------------------------------------------------------------"
	@[ -f Goldtree.exe ] || wget "https://github.com/XorTroll/Goldleaf/releases/download/0.6/Goldtree.exe" -O Goldtree.exe

hbloader:
	# @$(MAKE) -C nx-hbloader
	@echo "Included in Atmosphere"

hbmenu:
	# @$(MAKE) -C nx-hbmenu nx
	@echo "Included in Atmosphere"

sigpatches:
	@echo "----------------------------------------------------------------------------------------------------------------"
	@echo "Downloading IPS patches (ES & FS), because compiling may not be possible."
	@echo "Visit https://gbatemp.net/threads/i-heard-that-you-guys-need-some-sweet-patches-for-atmosphere.521164/ for help!"
	@echo "----------------------------------------------------------------------------------------------------------------"
	@[ -f patches.zip ] || curl "https://gbatemp.net/attachments/2-0-0-8-1-0-zip.170607/" -o patches.zip

sin:
	$(MAKE) -f Vortex

release: all
	cd _dist; zip Vortex.zip * -r -9; mv Vortex.zip ../Vortex-$(VERSION)-$(COMMIT).zip
