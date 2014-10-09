FROM consol/java-jolokia

MAINTAINER fabric8@googlegroups.com

ENV CLASSPATH /maven/*:/maven

RUN mkdir /maven

CMD java -cp $CLASSPATH $JAVA_OPTIONS $MAIN

