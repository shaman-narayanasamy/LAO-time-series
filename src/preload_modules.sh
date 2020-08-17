IMP_ENV=/mnt/nfs/projects/ecosystem_biology/local_tools/IMP/dependencies

export PATH=$IMP_ENV/fastuniq/source:$PATH
export PATH=$IMP_ENV/sortmerna-2.0:$PATH
export PATH=$IMP_ENV/sortmerna-2.0/scripts:$PATH
export PATH=$IMP_ENV/bwa-0.7.9a:$PATH
export PATH=$IMP_ENV/idba-1.1.1/bin:$PATH
export PATH=$IMP_ENV/megahit:$PATH
export PATH=$IMP_ENV/CAP3:$PATH
export PATH=$IMP_ENV/prokka/bin:$PATH
export PATH=$IMP_ENV/quast:$PATH
export PATH=$IMP_ENV/quast/libs/genemark/linux_64:$PATH
export PATH=$IMP_ENV/prokka/binaries/linux:$PATH
export PATH=$IMP_ENV/cd-hit-v4.6.1-2012-08-27_OpenMP:$PATH

# Samtools must be full path!
export PATH=/mnt/nfs/projects/ecosystem_biology/local_tools/IMP/dependencies/samtools-0.1.19:$PATH
export PATH=/mnt/nfs/projects/ecosystem_biology/local_tools/IMP/dependencies/bedtools2/bin:$PATH
export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/IMP/dependencies/bedtools2/bin
export PATH=$PATH:$IMP_ENV/bedtools2/bin

#source this file before execution of snakefile
module load lang/Python/2.7.13-intel-2017a
source /mnt/nfs/projects/ecosystem_biology/local_tools/IMP/bin/activate
module load lang/Java/1.7.0_21

#
#module load MEGAHIT
#module load BWA 
#module load SAMtools 
#module load BEDTools
#module load OpenBLAS 
#module load Boost/1.53.0-ictce-5.3.0 
#
#export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/idba-1.1.1.icc/bin
#
#module load CAP3
#
##symbolic links for prokka db 
module load prokka/prokka-master
#
#export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/tabix-0.2.6
#export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/gkno_launcher/tools/freebayes/bin
#export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/vcftools/bin
#export PERL5LIB=$PERL5LIB:/mnt/nfs/projects/ecosystem_biology/local_tools/vcftools/perl
export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/Platypus/Platypus_0.8.1
export PATH=/mnt/nfs/projects/ecosystem_biology/local_tools/IMP/dependencies/KronaTools-2.5/bin:$PATH
export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/FastQC
export PATH=$PATH:/home/users/claczny/apps/software/pullseq/bin
export PATH=/mnt/nfs/projects/ecosystem_biology/local_tools/subread-1.5.1-Linux-x86_64/bin:$PATH
export PATH=$PATH:/mnt/nfs/projects/ecosystem_biology/local_tools/nonpareil
export PATH=/work/projects/ecosystem_biology/local_tools/mOTUs/:$PATH

# Set up the environment
module load lang/R/3.0.2-ictce-5.3.0
module load bio/HMMER

#The Boost C++ Libraries were successfully built!
#
#The following directory should be added to compiler include paths:
#
#    /mnt/src_nfs1/projects/ecosystem_biology/local_tools/IMP/dependencies/boost_1_54_0
#
#The following directory should be added to linker library paths:
#
#    /mnt/src_nfs1/projects/ecosystem_biology/local_tools/IMP/dependencies/boost_1_54_0/stage/lib
#
source /home/users/snarayanasamy/repositories/drep/load_dependencies.sh
