#!/bin/sh

trap teardown SIGINT SIGTERM

teardown()
{
	kill -s SIGTERM $JAVA_PID
	wait $JAVA_PID
	exit 0
}

java -jar selenium-server-standalone-2.48.2.jar -role hub \
                                                -port $HUB_PORT &
JAVA_PID=$!
wait $JAVA_PID
