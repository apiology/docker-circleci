# CircleCI build image

[![CircleCI](https://circleci.com/gh/apiology/docker-circleci.svg?style=svg)](https://circleci.com/gh/apiology/docker-circleci)

CircleCI build image I use for multi-language builds.

To build locally, run `make`.  You can see automatic builds at
[Docker Hub](https://hub.docker.com/repository/docker/apiology/circleci)

To experiment, run:

```sh
docker run -it -v "$(pwd)/fix.sh":/home/circleci/project/fix.sh -v "$(pwd)/requirements_dev.txt":/home/circleci/project/requirements_dev.txt apiology/circleci
```
