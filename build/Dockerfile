FROM armv7

COPY qemu-arm-static /usr/bin/qemu-arm-static
COPY qemu-binfmt-register.sh /usr/bin

# ENTRYPOINT ["/unsr/bin/qemu-binfmt-register.sh"]
# CMD ["set", "arm"]

RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -R --noconfirm linux-aarch64"]

RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman-key --init"]
RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman-key --populate archlinuxarm"]

RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -Syu --noconfirm"]
RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -S --noconfirm base-devel"]
RUN ["/usr/bin/qemu-arm-static", "/bin/sh", "-c", "pacman -S --noconfirm xmlto docbook-xsl bc git uboot-tools vboot-utils dtc"]

WORKDIR /root
