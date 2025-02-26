FROM ghcr.io/advplyr/audiobookshelf:latest

# about this image
LABEL org.opencontainers.image.title="audiobookshelf – ffmpeg"
LABEL org.opencontainers.image.description="Dockerimage of audiobookshelf with installed ffmpeg and ffprobe."
LABEL org.opencontainers.image.authors="https://github.com/akupiec, https://github.com/bwbohl "
LABEL org.opencontainers.image.url=https://github.com/bwbohl/docker-audiobookshelf
LABEL org.opencontainers.image.source=https://github.com/bwbohl/docker-audiobookshelf
LABEL org.opencontainers.image.documentation=https://www.audiobookshelf.org/docs/
LABEL org.opencontainers.image.revision="1.0.0"
LABEL org.opencontainers.image.licenses=GPL-3

# about audiobookshelf
LABEL org.opencontainers.image.version="2.19.5"

# install ffmpeg (includes ffprobe)
RUN apk update && \
    apk update && \
    apk add --no-cache --update \
      ffmpeg
