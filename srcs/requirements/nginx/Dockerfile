FROM debian:buster

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y nginx
RUN apt-get install -y openssl

COPY	tools/nginx.conf /etc/nginx/
COPY	tools/wordpress.conf /etc/nginx/sites-enabled/

RUN openssl req -x509 -nodes -days 30 -subj "/C=BE/ST=Belgium/L=Brussels/O=42 Network/OU=s19/CN=yolo" -newkey rsa:4096 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

CMD nginx -g "daemon off;"