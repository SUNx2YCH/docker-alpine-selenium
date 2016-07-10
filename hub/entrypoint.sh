#!/bin/sh

source stop_trap.sh

java -jar $SELENIUM_JAR \
	-role hub \
	-port $SELENIUM_HUB_PORT \
	&
JAVA_PID=$!
wait $JAVA_PID
