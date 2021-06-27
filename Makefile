
VERSION = v0
ARCH = x86_64
USB_DEV = /dev/sdf

SRC := $(shell find src/ -type f)
ISO = iso/gabi-$(VERSION)-$(ARCH).iso

all: iso

$(ISO): $(SRC)
	sudo mkarchiso -v -w tmp/ -o iso/ src/

iso: $(ISO)

flash-usb:
	$(if $(USB_DEV),,$(error USB_DEV not defined))
	dd bs=4M if=$(ISO) of=$(USB_DEV) conv=fsync oflag=direct status=progress

clean:
	rm -rf iso/ tmp/

.PHONY: all iso flash-usb clean
