FROM alpine:3.9
LABEL maintainer="github.com/nikistochka"

ENV PROXY_USERNAME=USER1 \
    PROXY_PASSWORD=PASSWORD1 

RUN apk update && \
 apk --no-cache add squid apache2-utils nano && \
 htpasswd -cb /etc/squid/users_credentials ${PROXY_USERNAME} ${PROXY_PASSWORD}

COPY squid.conf /etc/squid/
WORKDIR /etc/squid


EXPOSE 3128
CMD ["sh", "-c", "/usr/sbin/squid --foreground"]
