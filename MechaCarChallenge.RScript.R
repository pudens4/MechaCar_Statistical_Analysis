library(dplyr)
data.frame <- read.csv(file = '/Volumes/Pud SSD/Analytics/Columbia University Bootcamp/Module15/MechaCar_Statistical_Analysis/MechaCar_mpg.csv', header = TRUE)


#perform linear regression
regression <- lm(vehicle_length ~ vehicle_weight, data = data.frame)
summary(regression)

regression <- lm(vehicle_length ~ spoiler_angle, data = data.frame)
summary(regression)

regression <- lm(vehicle_length ~ mpg, data = data.frame)
summary(regression)
