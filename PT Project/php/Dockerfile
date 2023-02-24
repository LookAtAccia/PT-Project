FROM php:8.0-apache
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get install openssh-server -y
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:toor' | chpasswd
ENTRYPOINT service ssh restart && service apache2 restart && /bin/bash



