#!/bin/bash

BIN=/ssd1/songxin8/spec_cpu_2017/benchspec/CPU/654.roms_s/run/run_base_refspeed_mytest-m64.0001
BENCH_RUN="${BIN}/sroms_base.mytest-m64"
BENCH_ARG="${BIN}/ocean_benchmark3.in"
BENCH_DRAM=""


#####
# orig: 11000MB
# bwaves:: 64GB memory footprint
#####

if [[ "x${NVM_RATIO}" == "x1:4" ]]; then
    BENCH_DRAM="128000MB"
elif [[ "x${NVM_RATIO}" == "x1:8" ]]; then
    BENCH_DRAM="64000MB"
elif [[ "x${NVM_RATIO}" == "x1:16" ]]; then
    BENCH_DRAM="32000MB"
fi

export BENCH_ARG
export BENCH_RUN
export BENCH_DRAM
