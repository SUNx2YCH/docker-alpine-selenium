#!/bin/sh

source stop_trap.sh

source utils.sh
start_xvfb

java -jar $SELENIUM_JAR \
	-port $SELENIUM_PORT \
	&
JAVA_PID=$!
wait $JAVA_PID
