FROM certbot/certbot
LABEL Author="Charles Stover"
WORKDIR /home

COPY src/crontab.txt /crontab.txt
COPY src/home/cert.sh /home/cert.sh

RUN /usr/bin/crontab /crontab.txt
RUN mkdir /var/www
RUN mkdir /var/www/certbot

RUN rm -rf /crontab.txt

ENTRYPOINT [ "echo", "Started" ]
