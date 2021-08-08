FROM alpine
ARG NGINX_USER
ARG NGINX_USER_PASSWORD
RUN apk add nginx openssl bash curl
COPY ./conf/custom.conf /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/ssl
RUN adduser -D "${NGINX_USER}"; echo "${NGINX_USER}:{NGINX_USER_PASSWORD}" | chpasswd ;
RUN mkdir /var/www/adminer
COPY ./conf/init.sh ./
COPY ./conf/adminer.php ./var/www/adminer/index.php
RUN openssl req -x509 -nodes -days 365 -newkey \
    rsa:2048 -keyout /etc/nginx/ssl/ndreadno.key -out /etc/nginx/ssl/ndreadno.crt -subj \
    "/C=RF/ST=Moscow/L=Moscow/O=school21/OU=ndreadno_42/CN=ndreadno_42"
CMD ["bash", "init.sh"]
