FROM debian:buster

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y mariadb-server
RUN apt-get -y install vim

COPY tools/setup.sh .

EXPOSE 3306
COPY ./tools/my.cnf /etc/mysql
COPY ./tools/setup.sh .

CMD		/setup.sh
