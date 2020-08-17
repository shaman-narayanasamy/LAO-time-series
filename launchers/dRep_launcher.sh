#!/bin/bash -l
#OAR -n bin_dereplication
#OAR -l core=48,walltime=120

source src/preload_modules.sh
THREADS=48 snakemake -prs workflows/TemporalBinning --unlock
THREADS=48 snakemake -prs workflows/TemporalBinning


