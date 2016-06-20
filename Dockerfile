FROM gliderlabs/alpine:3.4
MAINTAINER Pete Colapietro <pcssi@users.noreply.github.com>

RUN apk --update add \ 
      python \
      py-pip && \
      pip install --upgrade pip awscli s3cmd && \
      mkdir /root/.aws

# Expose data volume
VOLUME /apps
