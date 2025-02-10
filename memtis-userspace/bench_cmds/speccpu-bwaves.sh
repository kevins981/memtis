#!/bin/bash


WORKLOAD_DIR=/ssd1/songxin8/spec_cpu_2017/benchspec/CPU/603.bwaves_s/run/run_base_refspeed_mytest-m64.0000
#BENCH_RUN="${WORKLOAD_DIR}/speed_bwaves_base.mytest-m64 < ${WORKLOAD_DIR}/bwaves_1.in"
BENCH_RUN="${WORKLOAD_DIR}/speed_bwaves_base.mytest-m64"
BENCH_ARG="${WORKLOAD_DIR}/bwaves_1.in"
BENCH_DRAM=""


#####
# orig: 11000MB
#####

if [[ "x${NVM_RATIO}" == "x1:4" ]]; then
    BENCH_DRAM="128000MB"
elif [[ "x${NVM_RATIO}" == "x1:8" ]]; then
    BENCH_DRAM="64000MB"
elif [[ "x${NVM_RATIO}" == "x1:16" ]]; then
    BENCH_DRAM="32000MB"
fi

echo "Benchmark command is ${BENCH_RUN}"
echo "Benchmark arg is ${BENCH_ARG}"
echo "Benchmark DRAM is ${BENCH_DRAM}"

export BENCH_RUN
export BENCH_ARG
export BENCH_DRAM
