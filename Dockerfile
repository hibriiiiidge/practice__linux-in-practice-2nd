FROM ubuntu:20.04

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && apt-get install -y tzdata\
    binutils\
    build-essential\
    golang\
    sysstat\
    python3-matplotlib\
    python3-pil\
    fonts-takao\
    fio\
    qemu-kvm\
    virt-manager\
    libvirt-clients\
    virtinst\
    jq\
    docker.io\
    containerd\
    libvirt-daemon-system\
    strace

COPY . .
