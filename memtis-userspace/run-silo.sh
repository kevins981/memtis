#!/bin/bash

#NVM_RATIO="1:32 1:16 1:8"
BENCH="silo"
NVM_RATIO="1:8"

sudo dmesg -c

for NR in ${NVM_RATIO};
do
  #./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl --huge -V memtis-cxl-withhuge
  ./scripts/run_bench.sh -B ${BENCH} -R ${NR} --cxl -V memtis-cxl
done

