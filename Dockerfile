ARG DOCKER_TAG=latest
FROM cimg/base:2020.01
MAINTAINER apiology

COPY fix.sh /tmp
COPY requirements_dev.txt /tmp
RUN cd /tmp && ./fix.sh
