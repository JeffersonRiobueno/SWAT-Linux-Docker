FROM php:8.1-apache 

RUN apt update

RUN apt install nano -y

WORKDIR /var/www/html 

COPY . .

EXPOSE 80

CMD ["apache2-foreground"]
