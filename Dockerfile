ARG DOCKER_TAG=latest
FROM cimg/base:2020.01
MAINTAINER apiology

COPY fix.sh .
COPY requirements_dev.txt .
RUN ./fix.sh
