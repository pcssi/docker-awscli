FROM gliderlabs/alpine:3.3
MAINTAINER Xueshan Feng <sfeng@stanford.edu>

RUN apk --update add \ 
      python \
      py-pip && \
      pip install --upgrade pip awscli s3cmd && \
      mkdir /root/.aws

# Expose data volume
VOLUME /apps
