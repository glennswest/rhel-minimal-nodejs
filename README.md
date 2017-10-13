# rhelatomic-nodejs

Minimal Node.js Docker Image built on RHEL 7 atomic. Version v8.3.0 is built on RHEL atomic base image.

All versions use the one cibcapi/rhelatomic-nodejs repository, but each version aligns with the following tags (ie, cibcapi/rhelatomic-nodejs:<tag>):

- Full install built with npm:
    - `latest`, `8.3.0` (npm 5.3.0)

## Examples

```console
$ docker run --rm cibcapi/rhelatomic-nodejs node --version
v8.3.0

$ docker run --rm cibcapi/rhelatomic-nodejs npm --version
v5.3.0
```

## Build
To build docker image, run following command

```console
$ make build version="xxx"
```

## Run

```console
$ make run
```

## Clean up

```console
# clean any running cibcapi/rhelatomic-nodejs containers
$ make clean

# clean cibcapi/rhelatomic-nodejs docker images
$ make clean-image
```

## Example Dockerfile using rhelatomic-nodejs image

Here's a typical example using a "full install" image:

```Dockerfile
FROM cibcapi/rhelatomic-nodejs

WORKDIR /app
COPY . .

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python

RUN npm install --production

EXPOSE 3000
CMD ["node", "index.js"]
```
