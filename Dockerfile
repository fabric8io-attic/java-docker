FROM consol/java-jolokia

MAINTAINER fabric8@googlegroups.com

ENV CLASSPATH /maven/*:/maven

RUN mkdir /maven

CMD java $JAVA_OPTIONS -cp $CLASSPATH $MAIN $ARGUMENTS

