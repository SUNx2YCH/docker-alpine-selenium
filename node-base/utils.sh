#!/bin/sh

start_xvfb()
{
	# http://blog.jeffterrace.com/2012/07/xvfb-memory-leak-workaround.html
	# https://gist.github.com/jterrace/2911875
	# https://github.com/LoicMahieu/alpine-wkhtmltopdf/blob/master/Dockerfile
	export DISPLAY=':0.0'
	Xvfb :0 -screen 0 1280x800x24 -ac +extension GLX +render -noreset > /dev/null 2>&1 &
}

if type firefox > /dev/null 2>&1; then
	export FIREFOX_VERSION=$(firefox -v | grep -Eo '\d+\.\d+(\.\d+)?')
fi
