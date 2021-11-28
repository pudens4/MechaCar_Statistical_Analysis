library(dplyr)
data.frame <- read.csv(file = '/Volumes/Pud SSD/Analytics/Columbia University Bootcamp/Module15/MechaCar_Statistical_Analysis/MechaCar_mpg.csv', header = TRUE)


#perform linear regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = data.frame)
summary(reg)
