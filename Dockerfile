FROM ubuntu
RUN apt-get update && apt-get install apache2 -y
WORKDIR /var/www/html/
RUN echo "Welcome to the world of Docker" | tee index.html
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
