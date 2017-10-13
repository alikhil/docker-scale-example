#!/bin/bash
LIMIT=1000                 # 10 iterations.
a=1

while [ "$a" -le $LIMIT ]
do
  echo `curl localhost -G --silent --max-time 1`
  let "a+=1"
  sleep 0.1
done
