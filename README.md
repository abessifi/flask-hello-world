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

## Using Docker and Docker-Compose

1. Make sure docker and docker-compose are correctly installed and the docker deamon is up and running

2. Build and run with docker-compose

```
$ docker-compose up
```

**PS:** Check the `docker-compose.yml` file for more details.

## Using OpenShift


1. Login to OpenShift and create a namespace called `lab-c`

```
$ oc login <openshift-api-url>
$ oc new-project lab-c
```

2. Build the flask image

```
$ oc apply -f imagestream.yaml
$ oc apply -f buildconfig.yaml
```

**PS:** Once the build is finished, you can check the image status and tag as follow:

```
$ oc get istag
```

3. Run the image

```
$ oc apply -f deployment.yaml
$ oc get deploy
```

4. Expose the application

```
$ oc apply -f service.yaml

# Update the hostname with the openshift wildcard domain name before creating the route
$ oc apply -f route.yaml
```

