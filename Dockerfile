from enow/storm
MAINTAINER writtic <writtic@gmail.com>

ADD ./target/WordCount-1.0-SNAPSHOT.jar $STORM_HOME/extlib/WordCount-1.0-SNAPSHOT.jar

WORKDIR /usr/share/storm

ADD ./target/WordCount-1.0-SNAPSHOT.jar topology.jar

# add startup script
ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/usr/share/storm/entrypoint.sh"]
