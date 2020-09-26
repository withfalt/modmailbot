FROM node:current-alpine
RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite python3
RUN adduser -D -h /home/container container
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
ADD . /
CMD ["/bin/ash", "/entrypoint.sh"]
