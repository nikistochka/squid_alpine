## Squid http proxy on Alpine:3.9 image

### Getting started

### Important:
###Don't forget to download squid.conf

Run docker container with squid http proxy server:

```
docker run -d --name squid_alpine --restart always -p 3128:3128/tcp nikistochka/squid_alpine:1.0
```
