FROM  ubuntu:16.04
RUN sudo yum update -y
RUN sudo yum install -y apache2 php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip
RUN rm -rf /var/www/html/*
ADD website /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
