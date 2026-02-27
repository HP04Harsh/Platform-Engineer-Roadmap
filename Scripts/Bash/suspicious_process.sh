#!/bin/bash

THRESHOLD=70

ps -eo pid,comm,%cpu --sort=-%cpu | awk -v t=$THRESHOLD '
NR>1 && $3>t {print "High CPU Process:", $0}'