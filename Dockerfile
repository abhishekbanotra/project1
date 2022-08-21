FROM  php:7.4-apache
ADD ./website /var/www/html
COPY ./website devopsedu/webapp 
EXPOSE 80

