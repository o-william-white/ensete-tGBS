#!/bin/bash
#$ -pe smp 4
#$ -l h_vmem=1G
#$ -l h_rt=1:0:0
#$ -cwd
#$ -j y
#$ -N job_all_bsconverge

module add gcc/7.1.0
export PATH=/data/home/mpx469/software/raxml-ng-pthreads/raxml-ng/bin/:$PATH

# bscoverge
raxml-ng \
   --bsconverge \
   --bs-trees bootstrap_trees \
   --prefix bootstrap_convergence \
   --bs-cutoff 0.03 \
   --threads 4

