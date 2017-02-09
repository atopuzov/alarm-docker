.PHONY: run alarm

run:
	docker-compose run alarm bash || true

alarm:
	docker image import http://os.archlinuxarm.org/os/ArchLinuxARM-armv7-chromebook-latest.tar.gz alarm
