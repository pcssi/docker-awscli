FROM gliderlabs/alpine:3.4
MAINTAINER Pete Colapietro <pcssi@users.noreply.github.com>

RUN apk --update add \ 
      python \
      py-pip && \
      pip install --upgrade pip awscli && \
      mkdir /root/.aws && \
      aws configure set preview.cloudfront true

# Expose data volume
VOLUME /apps
