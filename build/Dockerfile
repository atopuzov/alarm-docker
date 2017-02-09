FROM alarm

COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -R --noconfirm linux-armv7 linux-armv7-chromebook"]
RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -Syu --noconfirm"]
RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -S --noconfirm base-devel"]
RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -S --noconfirm xmlto docbook-xsl bc git uboot-tools vboot-utils dtc"]

WORKDIR /root
