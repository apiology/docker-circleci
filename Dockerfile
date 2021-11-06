ARG DOCKER_TAG=latest
# https://circleci.com/developer/images/image/cimg/base?utm_medium=SEM&utm_source=gnb&utm_campaign=SEM-gnb-DSA-Eng-ni&utm_content=&utm_term=dynamicSearch-&gclid=EAIaIQobChMIs8LssdbP8AIV1_bICh1NXQg-EAAYASAAEgIum_D_BwE#image-tags
FROM cimg/base:stable-20.04
MAINTAINER apiology

RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc

COPY Makefile fix.sh requirements_dev.txt Gemfile Gemfile.lock /tmp/
RUN cd /tmp && \
    ./fix.sh && \
    rm -fr /home/circleci/.pyenv/versions/*/lib/python*/test && \
    strip /home/circleci/.pyenv/versions/*/lib/python*/lib-dynload/*.so && \
    strip /home/circleci/.pyenv/versions/*/lib/python*/config-*/*.a && \
    ( find /home/circleci/.pyenv/versions -name __pycache__ | xargs rm -fr ) && \
    strip /home/circleci/.pyenv/versions/*/lib/*.a && \
    rm -fr /home/circleci/.rbenv/versions/*/share/*