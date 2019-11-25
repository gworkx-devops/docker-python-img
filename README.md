## HOW TO BUILD A DOCKER IMAGE

+ Building a Python WebApp - Flask or Bottle image:

```sh
#! /bin/bash

#
# baking a python docker image
#
# docker image build -f Dockerfile.debian.php -t gworkx/img:python-workshop-3 .
# docker image build --no-cache -f Dockerfile.debian.php -t gworkx/img:python-workshop-3 .

# image baking - alpine
#
docker image build -f Dockerfile.alpine.php -t gworkx/img:python-workshop-alpine .

# image baking - debian
#
docker image build -f Dockerfile.debian.php -t gworkx/img:python-workshop-debian .

# image baking - MANec
#
docker image build -f Dockerfile.manec -t gworkx/img:python-workshop-manec .

#
# push the image to a remote registry
#
docker push gworkx/img:python-workshop-latest
```

## HOW TO SPIN A CONTAINER FROM THE IMAGE

+ To instantiate a docker container from the image execute the following steps:

```sh
#! /bin/bash

#
# start python web server with bottle or flask module
#
docker container run -d --name python-app-01 -p 8000:8000 -v $PWD/data-source gworkx/img:python-workshop-latest
```
