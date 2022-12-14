library(dplyr)
# DELIVERABLE 1 - Perform Linear Regression of effect of variables on MPG of MechaCar 
MechaCarMPG <- read.csv("MechaCar_mpg.csv", header= TRUE,sep = ",", stringsAsFactors = F)
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCarMPG)
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCarMPG))
# mpg= 104 + 6.267VL + .0012VW + .069SA + 3.546GC - 3.411AWD 
# i'm concerned that independent variables are correlated and could effect the results so i'm runnong a cor() function on the 2 variables that I believe could be corelated.  
cor(MechaCarMPG$vehicle_length, MechaCarMPG$vehicle_weight)
# variables are not correlated 
# DELIVERABLE 2 - Provide Summary Statistics for Suspension Coil PSI
Suspension_data <- read.csv("Suspension_Coil.csv", header = T, sep = ",", stringsAsFactors = F)
total_summary <- Suspension_data %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep')
lot_summary <- Suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep')

# DELIVERABLE 3 - Perform T Tests
# H0= PSI for each Manufacturing Lot is the same the population Mean (1500)
# Ha= PSI is statistical different from the population mean (1500)
t.test(Suspension_data$PSI, mu=1500)
# Test each Lot
t.test(subset(Suspension_data$PSI, Suspension_data$Manufacturing_Lot=='Lot1'), mu=1500)
t.test(subset(Suspension_data$PSI, Suspension_data$Manufacturing_Lot=='Lot2'), mu=1500)
t.test(subset(Suspension_data$PSI, Suspension_data$Manufacturing_Lot=='Lot3'), mu=1500)