FROM fabric8/java-agent-bond

MAINTAINER fabric8@googlegroups.com

ENV CLASSPATH /maven/*:/maven

RUN mkdir /maven

EXPOSE 8778 9779

ADD run.sh /fabric8/run.sh
CMD [ "/fabric8/run.sh" ]