#!/bin/env bash

FILES=("Airflow.desktop"  "consola_hadoop"  "consola_nifi"  "consola_postgres"  "dbeaver.desktop"  "Hadoop.desktop"  "Hive.desktop"  "Leeme"  "Leeme.odt"  "nifi.desktop"  "Spark+Master.desktop"  "start+hadoop"  "Yarn.desktop")

for FILE in ${FILES[@]};
do
    wget https://data-engineer-edvai.s3.amazonaws.com/links/$FILE
done