# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The -- are the variables that provided a non-random amount of variance to the mpg values
The slope of the linear model is not considered to be zero as the intercept is negative
No it doesnt predict mpg of MechaCar prototypes effectively because there are 2 variables with significance 

![Screen Shot 2021-11-27 at 9 50 44 PM](https://user-images.githubusercontent.com/86452750/143787973-1dae6bb1-4775-4339-93a1-a55acc7208dc.png)

## Summary Statistics on Suspension Coils

![Screen Shot 2021-11-28 at 5 55 10 PM](https://user-images.githubusercontent.com/86452750/143789653-3cb452a2-06e3-48f2-8559-8636b848fff5.png)



## T-Tests on Suspension Coils

For the PSI the t test has been negative when the mean is less than 1500
this can be observed in the Lot 3 and the main t test

t.test(data.coil$PSI, mu=1500)

	One Sample t-test

data:  data.coil$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 

> t.test(subset(data.coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

	One Sample t-test

data:  subset(data.coil, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 

> t.test(subset(data.coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

	One Sample t-test

data:  subset(data.coil, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 

> t.test(subset(data.coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)

	One Sample t-test

data:  subset(data.coil, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 


## Study Design: MechaCar vs Competition.


      Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think criticallyabout what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
      In your description, address the following questions:
      What metric or metrics are you going to test?
      What is the null hypothesis or alternative hypothesis?
      What statistical test would you use to test the hypothesis? And why?
      What data is needed to run the statistical test?
