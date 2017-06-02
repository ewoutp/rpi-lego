FROM hypriot/rpi-alpine-scratch

ADD https://github.com/xenolf/lego/releases/download/v0.3.1/lego_linux_arm.tar.xz /download/

RUN \
    apk add -U ca-certificates && \
    cd /download && \
    tar -xJf lego_linux_arm.tar.xz && \
    mv /download/lego/lego /usr/bin/lego && \
    rm -Rf /download 

ENTRYPOINT [ "/usr/bin/lego" ]
