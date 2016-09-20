Storm Tutorial with Docker  ![travis-CI](https://travis-ci.org/Writtic/stormTutorial.svg?branch=master) ![Maven Version](https://maven-badges.herokuapp.com/maven-central/org.apache.storm/storm-core/badge.svg)
==========================
docker-storm status:<br>
[![Docker Pulls](https://img.shields.io/docker/pulls/enow/storm.svg)](https://hub.docker.com/r/enow/storm/)
[![](https://images.microbadger.com/badges/image/enow/storm.svg)](https://hub.docker.com/r/enow/storm/) [![](https://images.microbadger.com/badges/version/enow/storm.svg)](https://hub.docker.com/r/enow/storm/)<br><br>
docker-zookeeper status:<br>
[![Docker Pulls](https://img.shields.io/docker/pulls/enow/zookeeper.svg)](https://hub.docker.com/r/enow/zookeeper/)
[![](https://images.microbadger.com/badges/image/enow/zookeeper.svg)](https://hub.docker.com/r/enow/zookeeper/)
[![](https://images.microbadger.com/badges/version/enow/zookeeper.svg)](https://hub.docker.com/r/enow/zookeeper/)<br>

Hello, Users of Apache Storm and Docker! <br/>
This Repo is for everyone! Follow the README.md instructions and learn Apache Storm easily!

The included maven project is based on [WordCount Example](https://azure.microsoft.com/documentation/articles/hdinsight-storm-develop-java-topology/) from Microsoft Azure

Environment setup
-----------------

If you are using a Mac follow the instructions [here](https://docs.docker.com/installation/mac/) to setup a docker environment.
- Install [docker-compose](http://docs.docker.com/compose/install/)
- Install [docker-machine](https://docs.docker.com/machine/)
- Start `docker-machine` and follow the commands below on the machine.
- Build maven for running a Storm cluster
    - `mvn clean package`
- Start the test environment
    - `docker-compose -p storm up -d`
- Then you can see storm, zookeeper and submitted WordCount topology

Storm UI
--------
Few minutes later... <br/>
The Storm UI will be available under: `http://<dockerIp>:8080/`<br/>
The Logviewer will be available under: `http://<dockerIp>:8000/` <br/>
e.g. `http://<dockerIp>:8000/log?file=supervisor.log`<br><br>
If you didn't modify the `docker-machine`, `<dockerIp>` is normally `192.168.99.100`

For more details and troubleshooting see: <br/> [Docker-Kafka](https://github.com/Writtic/docker-kafka) </br>
and </br> [Docker-Storm](https://github.com/Writtic/docker-storm)

## Apache Kafka, Zookeeper and Storm Installation
Below two Repositories help you learn and install powerful open source distributed realtime computation system.

- [https://github.com/Writtic/docker-storm](https://github.com/Writtic/docker-storm)
- [https://github.com/Writtic/docker-kafka](https://github.com/Writtic/docker-kafka)
