FROM consol/java-jolokia

MAINTAINER fabric8@googlegroups.com

ENV CLASSPATH /maven/*:/maven

RUN mkdir /maven

ENV JAVA_OPTIONS -javaagent:/opt/jolokia/jolokia.jar=host=0.0.0.0,port=8778,agentId=$HOSTNAME

EXPOSE 8778

CMD java $JAVA_OPTIONS -cp $CLASSPATH $MAIN $ARGUMENTS

