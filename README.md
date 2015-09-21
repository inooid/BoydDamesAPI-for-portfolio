## README

[![Code Climate](https://codeclimate.com/github/inooid/BoydDamesAPI-for-portfolio/badges/gpa.svg)](https://codeclimate.com/github/inooid/BoydDamesAPI-for-portfolio)
[![Test Coverage](https://codeclimate.com/github/inooid/BoydDamesAPI-for-portfolio/badges/coverage.svg)](https://codeclimate.com/github/inooid/BoydDamesAPI-for-portfolio/coverage)
[![Build Status](https://travis-ci.org/inooid/BoydDamesAPI-for-portfolio.svg?branch=master)](https://travis-ci.org/inooid/BoydDamesAPI-for-portfolio)

Make sure that docker and docker-compose is installed before proceeding (more info later):

Before running, build the image: `docker-compose build`
Start the server by running: `docker-compose up`

#### Using `docker-machine`

If you're using `docker-machine` to manage your docker VM's, it might be a good idea to create a new VM. If you're on a mac:

```
$ docker-machine create --driver virtualbox boyddames-api
```

This will create a new docker VM with the name **boyddames-api**.

if you run `$ eval "$(docker-machine env boyddames-api)"` then it will set the following ENV variables:

```shell
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://xxx.xxx.xxx.xxx:yyyy"
export DOCKER_CERT_PATH="/Users/<username>/.docker/machine/machines/boyddames-api"
export DOCKER_MACHINE_NAME="boyddames-api"
```
