# docker-sdkman-java

Image for SDKMAN with Alpine Linux (`Alpine:3.6`).

## Supported tags and respective `Dockerfile` links

Tags: `latest`

## Usage

### To start the docker container

```
docker run -it ymonnier/sdkman-java
```

It runs Alpine Linux with latest [SDKMAN](http://sdkman.io) for Java installation.

### To install SDK Java to a container

```
bash -c ". /root/.sdkman/bin/sdkman-init.sh && sdk install java {SDKMAN_JAVA_VERSION}"
```

Available Java Versions: `sdk list java`

Using docker-compose:

```yml
version: '2'
services:
    sdk-man:
        image: ymonnier/sdkman-java:{tag}
        command: bash -c ". /root/.sdkman/bin/sdkman-init.sh && sdk install java {SDKMAN_JAVA_VERSION}"
```
