## Squid http proxy based on Alpine:3.9

### Getting started

Important:
- Don't forget to download squid.conf

Run docker container with squid http proxy server:

```
docker run -d --name squid_alpine --restart unless-stopped -p 3128:3128/tcp nikistochka/squid_alpine:1.0
```
