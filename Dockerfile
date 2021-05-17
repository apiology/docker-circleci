ARG DOCKER_TAG=latest
# https://circleci.com/developer/images/image/cimg/base?utm_medium=SEM&utm_source=gnb&utm_campaign=SEM-gnb-DSA-Eng-ni&utm_content=&utm_term=dynamicSearch-&gclid=EAIaIQobChMIs8LssdbP8AIV1_bICh1NXQg-EAAYASAAEgIum_D_BwE#image-tags
FROM cimg/base:stable-20.04
MAINTAINER apiology

COPY Makefile fix.sh requirements_dev.txt Gemfile Gemfile.lock /tmp/
RUN cd /tmp && ./fix.sh
