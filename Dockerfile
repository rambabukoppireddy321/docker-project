FROM ubuntu:latest
ARG DEBIAN_FRONTEND-noninteractive
RUN apt-get -y update
RUN apt-get install git
COPY git clone https://github.com/rambabukoppireddy/docker-project.git
RUN apt-get install -y apache2 curl
COPY index.html /var/ww/html/index.html
WORKDIR /var/www/html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80
