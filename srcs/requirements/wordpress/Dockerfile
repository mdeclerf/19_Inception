FROM debian:buster

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y php7.3-fpm php7.3-mbstring php7.3-mysql php7.3-gd

COPY ./tools/php.ini		/etc/php/7.3/fpm
COPY ./tools/php-fmp.conf	/etc/php/7.3/fpm
COPY ./tools/www.conf 		/etc/php/7.3/fpm/pool.d

EXPOSE 9000
RUN mkdir -p /run/php
CMD /usr/sbin/php-fpm7.3 --nodaemonize
