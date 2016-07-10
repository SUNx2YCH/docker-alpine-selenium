#!/bin/sh

stop_trap() {
	kill -SIGTERM $JAVA_PID
	wait $JAVA_PID
	exit 0
}

trap stop_trap SIGINT SIGTERM
