#!/bin/bash -l

## This will be launched using the gaia73 node

#OAR -n PopulationAnalysis
#OAR -l core=60,walltime=240
#OAR -t besteffort
#OAR -t idempotent

source src/preload_modules.sh
#THREADS=12 snakemake -rpfs workflows/PopulationAnalysis -j 10
#THREADS=12 snakemake -rpfs workflows/PopulationAnalysis -j 12
snakemake -rpfs workflows/PopulationAnalysis --unlock
THREADS=6 snakemake -krpfs workflows/PopulationAnalysis -j 10 --rerun-incomplete
