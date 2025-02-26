FROM ghcr.io/advplyr/audiobookshelf:latest

RUN apk update && \
    apk update && \
    apk add --no-cache --update \
      ffmpeg