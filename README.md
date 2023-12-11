# Dockerfile

### 1. Realiza una imagen personalizada de un ubuntu 22.04 

Esta imagen debe contener el comando "ip", "ping" y "dig"
Para ello crearemos una carpeta y dentro un archivo llamada "Dockerfile" y lo abriremos con el code para ir editándolo.

En Dockerfile pondremos el siguiente código:

FROM ubuntu:22.04

ENV TERM linux
ENV DEBIAN_FRONTED noninteractive

RUN apt update
RUN apt install -y emacs iproute2 dnsutils iputils-ping

CMD ["/bin/bash"]

Y quedará la imagen configurada.

### 2.  Crea un repositorio en docker hub y súbela.

Para ello iremos a "Docker Hub" y nos logearemos y cuando acabemos le daremos a "create repository". Ahí le pondremos el nombre de la imagen que vamos a usar y lo crearemos. 

Ahora iremos al code y nos logearemos por consola, pondremos "$ docker login" y nos pedirá el nombre de usuario que hayamos puesto en docker hub y la contraseña. Ahora tan solo pondremos los comandos para subir la imagen a ese repositorio:

$ docker build -t javier98/cliente_ubuntu:red
$ docker push javier98/cliente_ubuntu:red

### 3. Pruebala con docker run

Usaremos:

$ docker run javier98/cliente_ubuntu:red

