#!usr/bin/env bash
#Script to trim fastq fastq pair  in folder specified w command line w trimmomatic
#give folder of fastqs as argument
mkdir ${1}/trimmed
for f in ${1}/*_1.fastq.gz
do
srr=$(basename ${f} _1.fastq.gz)
trimmomatic PE \
 $f ${1}/${srr}_2.fastq.gz
${1}/trimmed/${srr}_1.trim.fastq.gz  ${1}/trimmed/${srr}_1.untrim.fastq.gz  \
${1}/trimmed/${srr}_2.trim.fastq.gz  ${1}/trimmed/${srr}_2.untrim.fastq-gz  \
SLIDINGWINDOW:4:20 MINLEN:25 \ 
#ILLUMINACLIP:~/.miniconda3/pkgs/trimmomatic-0.38-0/share/trimmomatic-0.38-0/adapters/NexteraPE-PE.fa:2:40:15 

done
mv ${1}/trimmed $(dirname ${1})