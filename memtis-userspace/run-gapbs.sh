#!/bin/bash

#BENCHMARKS="gapbs-cc gapbs-bfs gapbs-bc"
#NVM_RATIO="1:32 1:16 1:8"
BENCHMARKS="gapbs-bfs"
NVM_RATIO="1:32"

NUM_THREADS=16
export OMP_NUM_THREADS=${NUM_THREADS}

sudo dmesg -c

for BENCH in ${BENCHMARKS};
do
    for NR in ${NVM_RATIO};
    do
	#./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl-withhuge-memmap
	./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl-withhuge-nosplit --nosplit
    done
done
