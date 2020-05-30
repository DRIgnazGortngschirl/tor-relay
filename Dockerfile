FROM alpine:latest

RUN apk add --update --no-cache \
  tor \
  python \
  python-dev \
  py-pip \
  build-base && \
  pip install nyx

EXPOSE 9050 9051

VOLUME ["/var/lib/tor"]

USER tor

CMD ["/usr/bin/tor"]
