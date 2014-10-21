#!/usr/bin/env bash

if [ -n "$MAIN" ]; then
  exec java $JAVA_OPTIONS -cp $CLASSPATH $MAIN $ARGUMENTS
else
  exec java $JAVA_OPTIONS -jar "/maven/$JAR" $ARGUMENTS
fi
