FROM alpine:3.16.0
# https://github.com/elm/compiler/blob/0.19.1/installers/linux/README.md
RUN wget -O elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz && \
    gunzip elm.gz && \
    chmod +x elm && \
    mv elm /usr/local/bin && \
    apk update && \
    apk add npm

CMD ["elm", "--help"]