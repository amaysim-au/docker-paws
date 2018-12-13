FROM alpine:3.8

RUN apk --no-cache add perl perl-dev perl-app-cpanminus wget build-base && \
    cpanm Paws && \
    apk del perl-dev perl-app-cpanminus build-base && \
    rm -rf /root/.cpanm
