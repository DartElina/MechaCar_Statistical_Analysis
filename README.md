# MechaCar_Statistical_Analysis
## Overview 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

We performed the following analysis: linear regression, collected summary statistics, and performed to t-tests for statistical significance. Upon completeion of this analysis we have also identified further suggested testing. 

## Linear Regression to Predict MPG
We performed a linear regression analysis to identify and predict how certain variables effected fuel efficiency. 

Our regression is estimated as: **mpg= 104 + 6.267VL + .0012VW + .069SA + 3.546GC - 3.411AWD**

![LM](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/LM.png)
![summary LM](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/SummaryLM.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
The intercept, vehicle length, and ground clearance were shown to be significant. This means that vehicle length and ground clearance had the most significant impact on MPG, or provided a non-random amount of variance to the MPG. The others could have a random amount of variance in our model. 

**Is the slope of the linear model considered to be zero? Why or why not?**
The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
The linear model generated may not be effective. When the intercept is statistically significant it could indicate that some variables could have been left out of the model, so we need transform our current variables and then re-evaluate their significance. 

Our linear regression model has a r-squared value of 0.7149, which means that roughly 70% of the variablilty of our dependent variable (MPG) is explained using this linear model.  

The miles per gallons are predicted to be increased by the vehicle length, vehicle weight, spoiler angle, ground clearance, and reduced by having AWD. I was concerned that perhaps vehicle length and vehicle weight were correlated variables and this would result in multicollinearity. I tested for correlation and found a weak negative relationship. I do not suspect this would cause multicollinearity in our model. 

## Summary Statistics on Suspension Coils
**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

![summary ALL](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/SummStatsTotal.png)
![summary EACH](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/SummStatsLOTS.png)

We collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots. The total summary statistics show us the mean, median, variance and standard deviation of all the lots combined. Combined they meet the design specs. However, we collected summary statisticsfor each lot to check that they are consistent. 

In the lot summary table we see that lots 1 and 2 have matching means and median with very small variance and standard deviations. These lots are producing suspension coils with very consistent PSI measurements. Lot 3 has an issue with consistency, there is a large variance in the PSI. Lot 3 may not be safe and needs further inspection. Lot 3 variance doesn't meet the design specifications.  

## T-Tests on Suspension Coils
We further anaylzed by running t-tests to determine if the manufacturing lots are statistically different from the mean population. 

![Ttest All](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/T.test_AllLots.png)

Our hypothesis in this analysis is:
#### H0: PSI for ALL Manufacturing Lots is the same the population Mean (1500)
#### HA: PSI is statistical different from the population mean (1500)

As a group the 3 lots combined do not reject the null hypothesis and there is no evidence that PSI is statistically different from 1500. However, in our previous analysis we saw that Lot 3 had very different summary statistics than Lots 1 and 2. So we performed these t-tests on each lot. 

![1](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/T.test_Lot1.png)
![2](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/T.test_Lot2.png)
![3](https://github.com/DartElina/MechaCar_Statistical_Analysis/blob/aecb73f75969864c1c80d623a050b0980f991e8d/images/T.test_Lot3.png)

#### H0: PSI for EACH Manufacturing Lot is the same the population Mean (1500)
#### HA: PSI is statistical different from the population mean (1500)

Lots 1 and 2 failed to reject the null. Lot 3 however showed evidence of statistical difference from the mean. With a confidence level 95% we can say that the mean is not 1500. 

## Study Design: MechaCar vs Competition
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. I suggest a study to identify bottle necks in the production lines. We can use an ANOVA test to compare the production times of different shifts of line workers. 

We would measure the average time of assembly of teams during different shifts. We would identify a mean for the company as a whole, a population mean, and then compare 1st, 2nd, and 3rd shifts to identify if different shift times result in increased variance in mean assembly times. Using an ANOVA test we can test if all groups have equal means or not. 

#### H0: The means of all groups are equal
#### HA: At least one of the means is different from all other groups

If the null hypothesis is rejected then we would need to look at the summary statistics of each shift to identify which shifts are slowing down assembly times. 


