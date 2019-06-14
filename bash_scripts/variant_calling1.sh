#raw_data_folder=~data/untrimmed_fastq/

#fastqc *fastq.gz

#mkdir-p ~/results/fastqc_untrimmed
#mv ~/data/untrimmed_fastq/*html ~/results/fastqc_untrimmed/
#mv ~/data/untrimmed_fastq/*zip ~/results/fastqc_untrimmed/
  
  #check summary here
  
  #trim
  
 # bash ~/bash_scripts/trim_script_loop_general.sh ~/data/untrimmed_fastq/
  
  #alignment
  bash ~/bash_scripts/alignment1.sh #note only does one file right now
  
  #Samt to bam
  bash ~/bash_scripts/bamfile.sh
  
  #variant calling
  bash ~/bash_scripts/call_var1.sh
  
  
  # calling variants
  
  