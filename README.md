Storm Tutorial with Docker  ![travis-CI](https://travis-ci.org/Writtic/stormTutorial.svg?branch=master) ![Maven Version](https://maven-badges.herokuapp.com/maven-central/org.apache.storm/storm-core/badge.svg)
==========================

Hello, Users of Apache Storm and Docker! <br/>
This Repo is for everyone! Follow the README.md instructions and learn Apache Storm easily!

The included maven project is based on [WordCount Example](https://azure.microsoft.com/documentation/articles/hdinsight-storm-develop-java-topology/) from Microsoft Azure

Environment setup
-----------------

If you are using a Mac follow the instructions [here](https://docs.docker.com/installation/mac/) to setup a docker environment.
- Install [docker-compose](http://docs.docker.com/compose/install/)
- Install [docker-machine](https://docs.docker.com/machine/)
- Start docker-machine and follow the commands below on the docker-machine.
- Build maven for running a Storm cluster
    - ```mvn clean package```
- Move the files in ```submitter``` folder (```Dockerfile``` and ```entrypoint.sh```) to ```target``` folder
- Start the test environment
    - ```docker-compose -p storm up -d```

Storm UI
--------
Few minutes later... <br/>
The Storm UI will be available under: ```http://<dockerIp>:8080/```<br/>
The Logviewer will be available under: ```http://<dockerIp>:8000/``` <br/>
e.g. ```http://<dockerIp>:8000/log?file=supervisor.log```

Submit Topology
---------------

when the storm ui is available create another window then Start the topology builder:</br>
```docker-compose -p storm -f submitter.yml build```<br/>
```docker-compose -p storm -f submitter.yml up```

For more details and troubleshooting see: <br/> [Docker-Kafka example](https://github.com/Writtic/docker-kafka) </br>
and </br> [Docker-Storm example](https://github.com/Writtic/docker-storm)

## Apache Kafka, Zookeeper and Storm Installation
Below two Repositories help you learn and install powerful open source distributed realtime computation system.

- [https://github.com/Writtic/docker-storm](https://github.com/Writtic/docker-storm)
- [https://github.com/Writtic/docker-kafka](https://github.com/Writtic/docker-kafka)
