FROM ubuntu:18.04

# Servidor web

RUN apt-get update && apt-get install -y apache2 apache2-utils

EXPOSE 80

COPY ./ellie /var/www/html/

VOLUME [ "/var/www/html/" ]

CMD ["apache2ctl", "-D", "FOREGROUND"]