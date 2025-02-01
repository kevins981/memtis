#!/bin/bash

BENCHMARKS="gapbs-cc gapbs-bfs gapbs-pr"
#NVM_RATIO="1:32 1:16 1:8"
#BENCHMARKS="gapbs-cc gapbs-pr"
NVM_RATIO="1:4"

NUM_THREADS=16
export OMP_NUM_THREADS=${NUM_THREADS}

sudo dmesg -c

for BENCH in ${BENCHMARKS};
do
    for NR in ${NVM_RATIO};
    do
	  #./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl --huge -V memtis-cxl-withhuge
	  ./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl
    done
done
