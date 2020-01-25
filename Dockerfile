FROM hypriot/rpi-alpine-scratch

ADD https://github.com/xenolf/lego/releases/download/v3.3.0/lego_v3.3.0_linux_armv7.tar.gz /download/

RUN \
    apk add -U ca-certificates && \
    cd /download && \
    tar -zxvf lego_v3.3.0_linux_armv7.tar.gz && \
    mv /download/lego /usr/bin/lego && \
    rm -Rf /download 

ENTRYPOINT [ "/usr/bin/lego" ]
