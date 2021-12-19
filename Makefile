.PHONY: run alarm

run:
	docker-compose run alarm /usr/bin/bash || true

alarm:
	docker image import http://os.archlinuxarm.org/os/ArchLinuxARM-armv7-chromebook-latest.tar.gz alarm


# Base images
BASE_URL := http://os.archlinuxarm.org/os
ARCH_AARCH64 := ArchLinuxARM-aarch64-latest.tar.gz
ARCH_ARMV7 := ArchLinuxARM-armv7-latest.tar.gz

$(ARCH_AARCH64):
	curl -LO $(BASE_URL)/$(ARCH_AARCH64)

$(ARCH_ARMV7):
	curl -LO $(BASE_URL)/$(ARCH_ARMV7)

.PHONY: docker-aarch64
docker-aarch64: $(AARCH64)
	docker image import $(AARCH64) aarch64

.PHONY: docker-armv7
docker-armv7: $(ARMV7)
	docker image import $(ARMV7) armv7

# Qemu
QEMU_BASE_URL := https://github.com/multiarch/qemu-user-static/releases/download
QEMU_RELEASE := v4.0.0
QEMU_AARCH64 := x86_64_qemu-aarch64-static.tar.gz
QEMU_ARMV7 := x86_64_qemu-arm-static.tar.gz

$(QEMU_AARCH64):
	curl -LO $(QEMU_BASE_URL)/$(QEMU_RELEASE)/$(QEMU_AARCH64)

$(QEMU_ARMV7):
	curl -LO $(QEMU_BASE_URL)/$(QEMU_RELEASE)/$(QEMU_ARMV7)

clean:
	rm $(QEMU_AARCH64) $(QEMU_ARMV7) $(ARCH_AARCH64) $(ARCH_ARMV7)
