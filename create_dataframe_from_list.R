library(dplyr)
library(tidyr)

##
## 'Studies', 'SPA_Resources','Submissions','Specifications','Standards',
## 'TLFs','Quality_Assessment','All_dates')
##
rm(list=ls())
df <- read.csv("./Deliverables.csv")

## Create Data.Drame  of Nested Fields/Col/Vars

study_df <- df %>% select(Studies,SPA_Resources,Submissions,
                          Specifications,Standards,TLFs,Quality_Assessment,All_dates)
## Wrangle Study Column/Var
study_vars1 <- separate(study_df, col=Studies,
                       into=c("Study","Title", "Design",
                             "Phase"),sep=":")
## 
## Wrangle SPA_Resources Column/Var
##
study_vars2 <- separate(study_df, col=SPA_Resources,
                        into=c("SpaResTypead",  "ResTypeId"  ,  "namePresenceEmailId"  , "displayName"  ,
                        "SPAProvider"  ,  "StartDate"  , "StopDate" , "ResNotes", "SpaResType",
                        "Programmer"  ,  "ResTypeId1" , "namePresenceEmailId1" ,  "displayName1" ,
                        "SPAProvider1", "SPAProviderId" , "StartDate1",  "StopDate ",  "ResNotes" ,
                        "SpaResType", "Programmer"  ,  "ResTypeId"  ,  "namePresenceEmailId" , 
                        "displayName" , "SPAProvider2"  ,  "SPAProviderId1" ,  "StartDate1",  
                        "StopDate1", "ResNotes1"),sep=":")
                        
                    
                      