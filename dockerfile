# syntax=docker/dockerfile:1
FROM spack/centos7
ADD set.sh ./

RUN chmod 777 set.sh
RUN ./set.sh

WORKDIR /Hackaton

COPY ./Hackaton ./
RUN chmod -R 777 .
RUN ./HackatonSetup.sh




WORKDIR /var/www/html

COPY ./html .

RUN chmod -R 777 .


ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

