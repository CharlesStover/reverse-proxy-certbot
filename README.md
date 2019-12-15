# Reverse Proxy (certbot)

The certbot layer of a reverse proxy.

## Build

```
docker build --file Dockerfile --tag charlesstover/reverse-proxy-certbot .
```

## Run

```
docker run \
  --detach \
  --name reverse-proxy-certbot \
  --network reverse-proxy \
  --restart always \
  --volume /PATH/TO/etc/letsencrypt:/etc/letsencrypt \
  --volume /PATH/TO/var/www/certbot:/var/www/certbot \
  charlesstover/reverse-proxy-certbot
```

Your SSL certificates will be saved to `/PATH/TO/etc/letsencrypt`. It
needs to match the path provided to
[reverse-proxy-nginx](https://github.com/CharlesStover/reverse-proxy-nginx).

Your certbot challenges will be served from `/PATH/TO/var/www/certbot`. It needs
to match the path provided to
[reverse-proxy-nginx](https://github.com/CharlesStover/reverse-proxy-nginx).
