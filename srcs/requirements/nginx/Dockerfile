FROM alpine
RUN apk add nginx openssl bash curl
COPY ./conf/custom.conf /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/ssl
RUN adduser -D "ndreadno"; echo "ndreadno:12ssh" | chpasswd ;
RUN mkdir /var/www/adminer
# RUN mkdir ./wordpress
COPY ./conf/init.sh ./
COPY ./conf/adminer.php ./var/www/adminer/index.php
# COPY ./conf/wordpress ./wordpress
# COPY ./conf/wordpress-5.5.1.tar.gz ./
# COPY ./conf/wp-config.php ./
# RUN tar -xzvf wordpress-5.5.1.tar.gz
# RUN rm wordpress-5.5.1.tar.gz

RUN openssl req -x509 -nodes -days 365 -newkey \
    rsa:2048 -keyout /etc/nginx/ssl/ndreadno.key -out /etc/nginx/ssl/ndreadno.crt -subj \
    "/C=RF/ST=Moscow/L=Moscow/O=school21/OU=ndreadno_42/CN=ndreadno_42"
CMD ["bash", "init.sh"]
