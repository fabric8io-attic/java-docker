FROM jolokia/java-jolokia

MAINTAINER fabric8@googlegroups.com

ENV CLASSPATH /maven/*:/maven

RUN mkdir /maven

ENV JAVA_OPTIONS -javaagent:/opt/jolokia/jolokia.jar=host=0.0.0.0,port=8778,agentId=$HOSTNAME

EXPOSE 8778

run mkdir /fabric8
ADD run.sh /fabric8/
CMD ["/fabric8/run.sh"]

