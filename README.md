Storm Tutorial with Docker  ![travis-CI](https://travis-ci.org/Writtic/stormTutorial.svg?branch=master)
==========================

Hello! Beginners of Apache Storm and Docker! This Repo is for you! Follow the README.md instructions and learn Apache Storm easily!

Environment setup
-----------------

If you are using a Mac follow the instructions [here](https://docs.docker.com/installation/mac/) to setup a docker environment.
- Install [docker-compose](http://docs.docker.com/compose/install/)
- Build for running a Storm cluster
    - ```mvn clean package```
- Move the files in ```submitter``` folder (```Dockerfile``` and ```entrypoint.sh```) to ```target``` folder
- Start the test environment
    - ```docker-compose -p storm up```

Storm UI
--------
The Storm UI will be available under: ```http://<dockerIp>:8080/```<br/>
The Logviewer will be available under: ```http://<dockerIp>:8000/``` <br/>
e.g. ```http://<dockerIp>:8000/log?file=supervisor.log```

Submit Topology
---------------

when the storm ui is available create another window then Start the topology builder:</br>
```docker-compose -p storm -f submitter.yml build```<br/>
```docker-compose -p storm -f submitter.yml up```

For more details and troubleshooting see: <br/> [https://github.com/enow/kafka-docker](https://github.com/enow/kafka-docker) </br>
and </br> [https://github.com/enow/storm-docker](https://github.com/enow/storm-docker)

## Apache Kafka, Zookeeper and Storm Installation
Below two Repositories and Tutorials help you install powerful open source distributed realtime computation system.

- [https://github.com/Writtic/docker-storm](https://github.com/Writtic/docker-storm)
- [https://github.com/Writtic/docker-kafka](https://github.com/Writtic/docker-kafka)
