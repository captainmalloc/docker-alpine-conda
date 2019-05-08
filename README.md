# Alpine 3.9 with Miniconda3

This small project is for building a custom Docker image based on *captainmalloc/alpine_glibc*.

This image is based on the work done  by
[flolvlad](https://github.com/frol/docker-alpine-miniconda3/ "frol/docker-alpine-miniconda3")

## Usage

Build a custom image using *docker*

```bash
docker build --tag=captainmalloc/alpine_conda .
```

or use the one available on [DockerHub](https://hub.docker.com "Docker Hub")

```bash
docker pull captainmalloc/alpine_conda
```

## Release Notes

### Initial Revision (2019-05-08)

Miniconda3 with conda 4.6.14
