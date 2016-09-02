obj-m += pci_rescan.o
KDIR = /lib/modules/`uname -r`/build
all:
	$(MAKE) -C $(KDIR) M=$$PWD modules

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

install:
	#$(MAKE) -C $(KDIR) M=$$PWD modules_install
	install -m644 pci_rescan.ko /lib/modules/`uname -r`/extra
