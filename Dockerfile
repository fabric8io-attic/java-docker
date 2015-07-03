FROM jolokia/java-jolokia

MAINTAINER fabric8@googlegroups.com

ENV CLASSPATH /maven/*:/maven

RUN mkdir /maven

EXPOSE 8778

ADD run.sh /fabric8/run.sh
CMD [ "/fabric8/run.sh" ]

