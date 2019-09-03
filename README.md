## HOW TO BUILD A DOCKER IMAGE

+ Building a Python WebApp - Flask or Bottle image:

```sh
#! /bin/bash

#
# baking the gworkx python docker image
#
docker image build --no-cache -t gworkx/img:python-latest -f Dockerfile .

#
# push the image to a remote registry
#
docker push gworkx/img:python-latest
```
## HOW TO SPIN A CONTAINER FROM THE IMAGE

+ To instantiate a docker container from the image execute the following steps:

```sh
#! /bin/bash

#
# start apache web server with a php module 
#
docker container run -d --name python-app-01 -p 8000:8000 -v $PWD/data-source gworkx/img:python-latest
```
