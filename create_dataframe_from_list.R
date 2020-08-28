library(dplyr)
library(tidyr)
library(stringr)
library(data.table)

##
## 'Studies', 'SPA_Resources','Submissions','Specifications','Standards',
## 'TLFs','Quality_Assessment','All_dates')
##
rm(list=ls())
df <- read.csv("../DATA/Deliverables.csv")
data <- df[c(1,4,5,17,18,19,21,28)]
colnames(data) <- c("ID","Studies","Submissions","Specifications","Standards",
                     "SPA_Resources","Quality_Assessment")
##
## BEgin Cleaning Study Data Frame

study <- data %>% select(ID,Studies)
# gsub("\["," ",study)
submission <- data %>% select(ID,Submissions)
specifications <- data %>% select(ID,Specifications)
standards <- data %>% select(ID,Standards)
spa <- data %>% select(ID,SPA_Resources)
Quality <- data %>% select(ID,Quality_Assessment)
##
## Write CSV Files:
write.csv(study,file="study.csv",row.names = FALSE)
write.csv(submission,file="submission.csv",row.names = FALSE)
write.csv(specifications,file="specifications.csv",row.names = FALSE)
write.csv(standards,file="standards.csv",row.names = FALSE)
write.csv(spa,file="spa.csv",row.names = FALSE)
write.csv(quality,file="quality.csv",row.names = FALSE)