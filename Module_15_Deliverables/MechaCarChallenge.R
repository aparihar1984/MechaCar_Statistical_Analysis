# Deliverable 1

# Import Library
library(dplyr)

# Importing and reading the csv file as a DataFrame.
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Linear Regression using the lm() function.
# Creating the linear model.
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) 
# Generating multiple linear regression model in above line.

# Summarize Linear model.
summary(reg)

# Deliverable 2

# Import Library
library(tidyverse)

# Importing and reading the csv file as a DataFrame.
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Creating the total_summary DataFrame.
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Creating the lot_summary DataFrame.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3

?t.test() # Hint Provided in Challenge.

# One Sample t-test.
t.test(Suspension_Coil$PSI, mu=1500)

# One Sample t-test for each Manufacturing_Lot.
Lot1 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
