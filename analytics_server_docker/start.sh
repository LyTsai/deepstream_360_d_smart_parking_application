#!/bin/sh

export IP_ADDRESS='127.0.0.1'

export GOOGLE_MAP_API_KEY='AIzaSyBJL16RM9c8uz0XlMyGxXOk48Gc2RDn2SsAIzaSyBJL16RM9c8uz0XlMyGxXOk48Gc2RDn2Ss'

sudo -E docker-compose up -d

sleep 10s

sudo docker exec -it spark-master ./bin/spark-submit  --class com.nvidia.ds.stream.StreamProcessor --master spark://master:7077 --executor-memory 8G --total-executor-cores 4 /tmp/data/stream-360-1.0-jar-with-dependencies.jar
