FROM httpd:latest

ENV TERM linux
ENV DEBIAN_FRONTED noninteractive

COPY ./web_sitio/index.html /usr/local/apache2/htdocs

RUN apt update
RUN apt install -y emacs iproute2 dnsutils iputils-ping




