ARG DOCKER_TAG=latest
FROM cimg/base:2020.01
MAINTAINER apiology

COPY Makefile fix.sh requirements_dev.txt Gemfile Gemfile.lock /tmp/
RUN cd /tmp && ./fix.sh
