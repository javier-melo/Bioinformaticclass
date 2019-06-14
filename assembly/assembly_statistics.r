#assembly statistics for different k for test data and ecol
library(ggplot2)
library(tidyr)

#read assembly stats (use test data or ecoli if you gave it)

assembly_stats <- read.csv("~/data/trimmed_fastq_small/sub/assembly/allteststats",sep = "\t")
View(assembly_stats)
allstats <- read.table("~/data/trimmed_fastq_small/sub/assembly/allteststats")

#make sure your table shows the k value so you can plot it 
assembly_stats2 <- separate(assembly_stats,n,c("name1","n"),sep=":") %>%
separate(name,c("k","name1"), sep="-") %>% separate(k,c("name2","k"),sep="k")

#plot N50 and total length as a function of k
ggplot(data= assembly_stats2,
       aes(x= k, y= N50)) + 
      geom_point() 
      
ggplot(data= assembly_stats2,
       aes(x= k, y= sum)) + 
  geom_point() 

ggplot(data= assembly_stats2,
       aes(N50,as.integer(n))) + 
  geom_point() +
  geom_smooth(method="lm",se=FALSE)


#there are lots more plots to make
#if you want to communicate all the results effectively use RMarkdown
#install.packages("knitr")



       