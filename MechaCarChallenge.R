# library(tidyverse)

#import used car data set
mcm <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

head(mcm)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mcm) 
#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mcm)) 

#import suspension coil data set
sc <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) 

#create total summary
total_summary <- sc %>% summarize(Mean=mean(PSI),
                                  Median=median(PSI),
                                  Variance=var(PSI),
                                  SD=sd(PSI), .groups = 'keep')

#create lot summary
lot_summary <- sc %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                Median=median(PSI),
                                                                Variance=var(PSI),
                                                                SD=sd(PSI), .groups = 'keep')

