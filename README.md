# CircleCI build image

[![CircleCI](https://circleci.com/gh/apiology/docker-circleci.svg?style=svg)](https://circleci.com/gh/apiology/docker-circleci)

CircleCI build image I use for multi-language builds.

```sh
docker pull apiology/circleci:latest
```

To build locally, run `make`.  You can see images at
[Docker Hub](https://hub.docker.com/repository/docker/apiology/circleci)

To experiment, run:

```sh
docker run -it -v "$(pwd)/fix.sh":/home/circleci/project/fix.sh -v "$(pwd)/requirements_dev.txt":/home/circleci/project/requirements_dev.txt apiology/circleci
```

## Contributions

This project, as with all others, rests on the shoulders of a broad
ecosystem supported by many volunteers doing thankless work, along
with specific contributors.

In particular I'd like to call out:

* [Audrey Roy Greenfeld](https://github.com/audreyfeldroy) for the
  cookiecutter tool and associated examples, which keep my many
  projects building with shared boilerplate with a minimum of fuss.
