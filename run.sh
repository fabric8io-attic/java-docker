#!/usr/bin/env bash

if [ -n "$MAIN" ]; then
  java $JAVA_OPTIONS -cp $CLASSPATH $MAIN $ARGUMENTS
else
  java $JAVA_OPTIONS -jar "/maven/$JAR" $ARGUMENTS
fi
