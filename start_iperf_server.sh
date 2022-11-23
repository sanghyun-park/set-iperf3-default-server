#!/bin/sh

sudo killall iperf3 > /dev/null 2>&1

LOGDATE=`date +%Y%m%d-%H%M%S`
nohup iperf3 -s | ts '[%Y-%m-%d %H:%M:%S]' >> ./iperf3-$LOGDATE.log 2>&1 &
