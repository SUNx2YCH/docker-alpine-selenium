#!/bin/sh

trap teardown SIGINT SIGTERM

teardown()
{
	kill -s SIGTERM $JAVA_PID
	wait $JAVA_PID
	exit 0
}

# http://blog.jeffterrace.com/2012/07/xvfb-memory-leak-workaround.html
# https://gist.github.com/jterrace/2911875
# https://github.com/LoicMahieu/alpine-wkhtmltopdf/blob/master/Dockerfile
export DISPLAY=":0.0"
Xvfb :0 -screen 0 1280x800x24 -ac +extension GLX +render -noreset > /dev/null 2>&1 &

java -jar selenium-server-standalone-2.53.0.jar -role node \
                                                -hub http://$HUB_HOST:$HUB_PORT/grid/register \
                                                -browser browserName=firefox,version=38,maxInstances=1,platform=LINUX &
JAVA_PID=$!
wait $JAVA_PID
