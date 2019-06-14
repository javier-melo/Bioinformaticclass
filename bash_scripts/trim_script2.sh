#!usr/bin/env bash
#Script to trim fastq 1st fastq pair  w  trimmomatic
trimmomatic PE \
~/data/untrimmed_fastq/SRR2584863_1.fastq.gz  ~/data/untrimmed_fastq/SRR2584863_2.fastq.gz  \
~/data/trimmed_fastq/SRR2584863_1.fastq.gz  ~/data/trimmed_fastq/SRR2584863_1.fastq.gz  \
~/data/trimmed_fastq/SRR258463.fastq.gz  ~/data/trimmed_fastq/SRR2584863_2.fastq-gz  \
SLIDINGWINDOW:4:20 # \ 
#ILLUMINACLIP:~/.miniconda3/pkgs/trimmomatic-0.38-0/share/trimmomatic-0.38-0/adapters/NexteraPE-PE.fa 

