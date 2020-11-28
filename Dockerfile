FROM certbot/certbot
LABEL Author="Charles Stover"
WORKDIR /home

COPY src/home/cert.sh /home/cert.sh

RUN mkdir /var/www
RUN mkdir /var/www/certbot

ENTRYPOINT [ "/bin/sh", "-c", "trap exit TERM; while :; do certbot renew; sleep 12h; done;" ]
