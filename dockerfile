FROM php:8.1-apache

# Actualiza los repositorios e instala herramientas necesarias
RUN apt update && apt install nano -y

# Cambia el puerto en el archivo de configuración de Apache
RUN sed -i "s/Listen 80/Listen 8080/" /etc/apache2/ports.conf \
    && sed -i "s/<VirtualHost \*:80>/<VirtualHost \*:8080>/" /etc/apache2/sites-available/000-default.conf

# Establece el directorio de trabajo
WORKDIR /var/www/html

# Copia el contenido actual al contenedor
COPY . .

# Expone el puerto 8080
EXPOSE 8080

# Comando por defecto para iniciar Apache
CMD ["apache2-foreground"]
