library(tidyverse)
library(rtracklayer)
library(data.table)


# Import GTF file
gtf.ranges <- rtracklayer::import(con = "../human_gencode-v28.gtf") # returns GRanges object

# Convert GRganges to data frame
gtf.df <- as.data.frame(gtf.ranges)

# Save as a csv file
write.csv(gtf.df, "gtf.csv")
