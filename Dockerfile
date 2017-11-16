FROM alpine:3.6

ENV SDKMAN_DIR=/root/.sdkman

RUN apk upgrade --update && \
    apk add --no-cache --update libstdc++ curl ca-certificates bash zip unzip openssl && \
    update-ca-certificates && \
    curl -s "https://get.sdkman.io" | bash && \
    rm -rf /var/lib/apt/lists/* && \
    echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config && \
    echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config && \
    echo "sdkman_insecure_ssl=true" >> $SDKMAN_DIR/etc/config

ENTRYPOINT sh
