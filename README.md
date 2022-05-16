# Premios Platzi App

## Prerequisite

- Docker

## How to run

1. Create Docker Image

```sh
docker build -t <docker-image> .
```

2. Run Docker Container

```sh
docker run --name <CONTAINER-NAME> --rm -p <MAPPED_PORT>:8000 -d <docker-image>
```

> If everythings is ok, you will be able to see the app running on the dev server at http://localhost:<MAPPED_PORT>
