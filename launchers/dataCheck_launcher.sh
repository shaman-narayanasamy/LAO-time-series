#!/bin/bash -l

## This will be launched using the gaia73 node

#OAR -n DataCheck_LAO
#OAR -l core=120,walltime=120
#nOAR -t besteffort
#nOAR -t idempotent

source src/preload_modules.sh
THREADS=12 snakemake -krpfs workflows/DataCheck -j 10 --unlock
THREADS=12 snakemake -krpfs workflows/DataCheck -j 10 --touch
THREADS=12 snakemake -krpfs workflows/DataCheck -j 10

## D45 failed rerunning
#THREADS=12 snakemake -krpfs workflows/DataCheck
