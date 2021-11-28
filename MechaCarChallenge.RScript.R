library(dplyr)
data.frame <- read.csv(file = '/Volumes/Pud SSD/Analytics/Columbia University Bootcamp/Module15/MechaCar_Statistical_Analysis/MechaCar_mpg.csv', header = TRUE)


#perform linear regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data.frame)
summary(reg)


data.coil <- read.csv(file = '/Volumes/Pud SSD/Analytics/Columbia University Bootcamp/Module15/MechaCar_Statistical_Analysis/Suspension_Coil.csv', header = TRUE)
summarise(data.coil, mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))


group_manuf <- group_by(data.coil, Manufacturing_Lot )
summarise(group_manuf, mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))


# t test
t.test(data.coil$PSI, mu=1500)

t.test(subset(data.coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(data.coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(data.coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
