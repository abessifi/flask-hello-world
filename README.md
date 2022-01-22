Flask Hello World application
=============================

This is the Flask Hello World application shamelessly copied from
http://flask.pocoo.org/docs/quickstart/.

# Build and Run Flask Container

## Using Buildah and Podman for local development (or on any machine in the cloud)

1. Install podman and buildah (on CentOS)

```
$ yum install -y podman buildah
```

2. Build the container image

```
$ git clone -b flask-dockerized https://github.com/abessifi/flask-hello-world
$ cd flaks-hello-world
$ buildah bud -t flask-hello-world:stc .
```

3. Check the image

```
$ buildah images flask-hello-world:stc
```

4. Run the container

```
$ podman run -d --name flask flask-hello-world:stc
$ podman ps
```

## Using Docker Compose

## Using OpenShift

