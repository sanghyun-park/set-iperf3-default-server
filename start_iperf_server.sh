#!/bin/sh

sudo killall iperf3

LOGDATE=`date +%Y%m%d-%H%M%S`
nohup iperf3 -s >> ./iperf3-$LOGDATE.log 2>&1 &
