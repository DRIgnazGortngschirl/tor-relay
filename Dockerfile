FROM alpine:3.18

RUN apk add --update --no-cache tor 

EXPOSE 9050 9051

VOLUME ["/var/lib/tor"]

USER tor

CMD ["/usr/bin/tor"]
