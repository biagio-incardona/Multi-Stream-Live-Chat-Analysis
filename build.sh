#!/usr/bin/env bash

SPARK_DIR="./spark/setup"
KAFKA_DIR="./kafka/setup"

rm spark/setup/placeholder.txt 2>&1 >/dev/null
rm kafka/setup/placeholder.txt 2>&1 >/dev/null

echo "Checking dependencies..."
if [ "$(ls -A $SPARK_DIR)" ]; then
     echo "Spark's dependencies found..."
else
    echo "Installing Spark's dependencies..."
    wget https://downloads.apache.org/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz && \
    mv spark-2.4.6-bin-hadoop2.7.tgz spark/setup;
fi
if [ "$(ls -A $KAFKA_DIR)" ]; then
     echo "Kafka's dependencies found..."
else
    echo "Installing Kafka's dependencies..."
    wget https://downloads.apache.org/kafka/2.4.1/kafka_2.12-2.4.1.tgz && \
    mv kafka_2.12-2.4.1.tgz kafka/setup;
fi


docker build spark/. --tag tap2:spark

echo "--------------------------------------------"

docker build elasticsearch/. --tag tap2:es

echo "--------------------------------------------"

docker build python/. --tag tap2:python

echo "--------------------------------------------"

docker build logstash/. --tag tap2:logs

echo "--------------------------------------------"

docker build kafka/. --tag tap2:kafka

echo "--------------------------------------------"

docker build kibana/. --tag tap2:kibana
