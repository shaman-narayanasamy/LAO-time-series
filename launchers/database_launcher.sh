#!/bin/bash -l

## This will be launched using the gaia73 node

#OAR -n Database
#OAR -l core=24,walltime=36

source src/preload_modules.sh
#THREADS=1 snakemake -krps workflows/Databases -j 12

THREADS=1 snakemake -ps workflows/Databases -f Annotations/ALL-mgmt.assembly.merged.gff -j 24
