FROM ubuntu
RUN apt-get update && \
        apt-get install curl  apache2  -y
WORKDIR /var/www/html
COPY index.html   .
CMD ["apachectl", "-DFOREGROUND"]
EXPOSE 80
