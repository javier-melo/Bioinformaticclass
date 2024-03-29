#!/usr/bin/env bash
#try different values of k for abyss assembly with test data

for k in  `seq 15 3 45`; do

abyss-pe k=$k name=testk$k in='SRR2589044_1.trim.sub.fastq SRR2589044_2.trim.sub.fastq'

done
head -1 testk15-stats > allteststats
grep 'scaffolds.fa' test*stats >> allteststats
