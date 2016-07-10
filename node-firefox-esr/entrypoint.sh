#!/bin/sh

source stop_trap.sh

source utils.sh
start_xvfb

java -jar $SELENIUM_JAR \
	-role node \
	-hub $SELENIUM_HUB_URL \
	-browser browserName=firefox,version=$FIREFOX_VERSION,maxInstances=1,platform=LINUX \
	&
JAVA_PID=$!
wait $JAVA_PID
