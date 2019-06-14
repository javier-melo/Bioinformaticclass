#install dplyr,tidyr,ggplot2
install.packages(dplyr)
install.packages(tidyr)
install.packages(ggplot2)
#load libraries
library(dplyr)
library(tidyr)
library(ggplot2)

#load variant data for all individuals
VCF <- read.csv("r_data/combined_tidy_vcf.csv")
#if you didńt do this use ~/r_data/combined_tidy_vcf.csv



#load information about ecoli /strains (mine is data_info)


#put together variant information and citrate information
variants_w_metada <- left_join(VCF, ecoli, by = c("sample_id" = "run"))

#count the number of mutations for each sample and known which is cit+
cit_mut <- variants_w_metada %>% count(sample_id,cit)
summary(cit_mut)
dim(cit_mut)
head(cit_mut)
