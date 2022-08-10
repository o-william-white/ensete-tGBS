#!/bin/bash
#$ -pe smp 1
#$ -l h_vmem=1G
#$ -l h_rt=1:0:0
#$ -cwd
#$ -j y
#$ -N job_populations_all_snps
#$ -t 70,80,90,100,110,120
#$ -tc 6

module add stacks/2.41

# mkdir if not already present
mkdir -p populations
mkdir -p populations/populations_${SGE_TASK_ID}_all_snps

populations \
   -P gstacks/gstacks_${SGE_TASK_ID}/ \
   -O populations/populations_${SGE_TASK_ID}_all_snps \
   -M gstacks/popmap.txt \
   -R 0.8 \
   --min-mac 3 \
   --vcf --fasta-loci

