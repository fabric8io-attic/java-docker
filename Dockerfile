FROM jolokia/java-jolokia:8

MAINTAINER fabric8@googlegroups.com

ENV CLASSPATH /maven/*:/maven

RUN mkdir /maven

EXPOSE 8778

run mkdir /fabric8
ADD run.sh /fabric8/
CMD [ "/fabric8/run.sh" ]
