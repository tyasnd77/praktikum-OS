FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    qemu-system-x86 \
    make \
    gcc \
    gdb \
    nasm \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /xv6

RUN git clone https://github.com/mit-pdos/xv6-public.git .

CMD ["/bin/bash"]

