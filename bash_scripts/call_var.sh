#!/usr/bin/env bash
# variant calling

#Sam to BAM

samtools view -S -b ~/results/alignment/SRR2584863.sam | \ #> ~/results/alignment/SRR2584863.bam 
samtools sort -o ~/results/alignment/SRR2584863.sorted.bam
#variant calling
samtools index ~/results/alignment/SRR2584863.sorted.bam #need index for tview

bcftools mpileup -O b -o SRR2584863.bcf \
-f ~/data/ref_genome/GCA_000017985.1_ASM1798v1_genomic.fna \
~results/alignment/SRR2584863.sorted.bam

bcftools call --ploidy 1 -m -v -o ~results/SRR2584863_variants.bcf ~/results/SRR2584863.bcf
vcfutils.pl varFilter ~/results/SRR258463_variants.bcf > results/SRR258463_final_variants.vcf

