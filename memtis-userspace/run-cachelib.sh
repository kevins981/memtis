#!/bin/bash

#BENCHMARKS="cachelib-cdn cachelib-graph"
#NVM_RATIO="1:32 1:16 1:8 1:4"
BENCHMARKS="cachelib-graph"
#BENCHMARKS="cachelib-graph-changedist"
NVM_RATIO="1:4"

sudo dmesg -c

for BENCH in ${BENCHMARKS};
do
    for NR in ${NVM_RATIO};
    do
	  #./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl-withhuge-nosplit --nosplit
	  #./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl-withhuge-lowermem
	  #./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl-hugepage-cpuCache
	  ./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl
    done
done
