#!/bin/bash

BENCHMARKS="xgboost"
#NVM_RATIO="1:32 1:16 1:8"
NVM_RATIO="1:16 1:8"
#NVM_RATIO="1:32"

sudo dmesg -c

for BENCH in ${BENCHMARKS};
do
    for NR in ${NVM_RATIO};
    do
	  ./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl
    done
done
