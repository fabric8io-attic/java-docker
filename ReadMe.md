## fabric8 java docker image

This project builds a [docker](http://docker.io/) image for running a Java application

Exposes port: **8778** by default for Jolokia. See [how to configure or disable jolokia](https://registry.hub.docker.com/u/consol/java-jolokia/)

This image is intended to be use as a base image.

Just copy whatever jars you want to into the **/maven** folder.

### Environment variables:

Se the following environment variables:

* **MAIN** to the Java main class to run
* **ARGUMENTS** for any command line arguments to pass into the java process.

### Building the docker container locally

We have a Docker Index trusted build setup to automatically rebuild the fabric8/hawtio container whenever the [Dockerfile](https://github.com/fabric8io/java-docker/blob/master/Dockerfile) is updated, so you shouldn't have to rebuild it locally. But if you want to, here's now to do it...

Once you have [installed docker](https://www.docker.io/gettingstarted/#h_installation) you should be able to create the containers via the following:

    git clone git@github.com:fabric8io/java-docker.git
    cd java-docker
    ./build.sh

The java docker container should then build.
