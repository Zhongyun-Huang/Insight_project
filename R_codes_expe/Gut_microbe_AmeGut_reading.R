#### Gut_microbe_data_preliminary_cleaning ####
#### Insight Project ####
### Have some guts today ###
install.packages("data.table")
library(data.table)
clean_mega <- fread("ftp://ftp.microbio.me/AmericanGut/ag-July-29-2016/04-meta/ag-cleaned.txt",header = T, sep="\t")
 ## Meta data with features reported by individuals
require(data.frame)

ag_10k_fecal <- fread("ftp://ftp.microbio.me/AmericanGut/latest/11-packaged/fecal/100nt/all_participants/all_samples/10k/ag_10k_fecal.txt",header = T,sep = "\t")

