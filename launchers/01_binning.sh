#!/bin/bash -l
#OAR -n test_01
#OAR -l nodes=1/core=8,walltime=120

#####
# # # Launcher to run the binning. Taking output files of IMP
####
source /home/users/smartinezarbas/git/gitlab/LAO-time-series/src/preload_modules.sh

THREADS=1 snakemake -j 8 -pf workflow_binning.done -s workflows/Binning
