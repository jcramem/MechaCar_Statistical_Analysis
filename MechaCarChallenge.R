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


#t-test PSI all manufacturing lots against mean PSI of the population
t.test(sc$PSI,mu = 1500)
# t.test((sc$PSI),mu=mean((sc$PSI))) 

#t-test PSI lot 1 against mean PSI of the population
ls_1 <- sc[sc$Manufacturing_Lot == "Lot1",]
t.test(ls_1$PSI,mu = 1500)
# t.test((ls_1$PSI),mu=mean((sc$PSI))) 

#t-test PSI lot 2 against mean PSI of the population
ls_2 <- sc[sc$Manufacturing_Lot == "Lot2",]
t.test(ls_2$PSI,mu = 1500)
# t.test((ls_2$PSI),mu=mean((sc$PSI))) 

#t-test PSI lot 3 against mean PSI of the population
ls_3 <- sc[sc$Manufacturing_Lot == "Lot3",]
t.test(ls_3$PSI,mu = 1500)
# t.test((ls_3$PSI),mu=mean((sc$PSI))) 
