# library(tidyverse)

#import used car data set
mcm <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

head(mcm)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mcm) 
#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mcm)) 
