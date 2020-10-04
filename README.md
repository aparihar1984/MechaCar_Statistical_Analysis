# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
When examining the p-value coefficients in our console summary and how they relate to the Signif. codes that are given, we can see that the mpg is best predicted by the vehicle_length and the ground_clearance.  The vehicle_length and ground_clearance p-values are very close/closest to zero and thus are most closely correlated to the mpg (there is a relationship/non-random amount of variance between them and mpg).  The summary also denotes vehicle_length and ground_clearance p-values with *** notation, another indicator of their strong correlation to mpg.

Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not zero, because if the slope were zero the linear model/graph would be a straight horizontal line (y=b).  When examining the coeffcients in our summary we can see that they all are non-zero, and that the differences between these coefficients is large enough that a m-value/slope does indeed exist.  The r-squared value of 0.7149 indicates that there is a strong positive or negative correlation since the r-squared value is non-zero and close to 1.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Our overall p-value is 5.35e-11, which is below the assumed significance level of 0.05.  Therefore we can state that there is enough evidence to reject the null hypothesis that they are not related, and thus say that this linear model does not predict mpg of MechaCar prototypes effectively.

Screenshots for p-value coefficients in summary:
[GitHub Picture](https://github.com/aparihar1984/MechaCar_Statistical_Analysis/blob/main/Module_15_Deliverables/Screen%20Shots/p-values_Summary.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
When examining our total_summary DataFrame, we can see that the PSI variance is roughly 76.2 PSI.  This indicates that the current manufacturing data for the manufacturing lots in total does meet the design specifications that the suspension coils must not exceed 100 PSI.
When examining our lot_summary DataFrame, we can see that the PSI variance exceeds 100 PSI for lot 3 (~ 200 PSI), but does not exceed 100 PSI for lots 1 and 2 (~ 1 PSI and 10 PSI respectively).  Thus, lots 1 and 2 meet the design specifications while lot 3 does not.

Screenshots for total_summary and lot_summary:
[GitHub Picture](https://github.com/aparihar1984/MechaCar_Statistical_Analysis/blob/main/Module_15_Deliverables/Screen%20Shots/total_summary.png)
[GitHub Picture](https://github.com/aparihar1984/MechaCar_Statistical_Analysis/blob/main/Module_15_Deliverables/Screen%20Shots/lot_summary.png)

## T-Tests on Suspension Coils

Based on our one sample t-test for the manufacturing lots in total, we have a p-value of 0.5117, which is above the assumed significance level of 0.05.  Therefore we can state that there is not enough evidence to reject the null hypothesis (we fail to reject the null hypothesis) that there is no relationship between the sample and the given population (mean of every suspention coil/mu=1500).
Based on our one sample t-test for each of the manufacturing lots 1, 2, and 3, we have p-values of 0.9048, 0.3451, and 0.637 respectively.  All of the p-values are above the assumed significance level of 0.05.  Therefore we can state that there is not enough evidence to reject the null hypothesis (we fail to reject the null hypothesis) that there is no relationship between the samples and the given population (mean of every suspension coil/mu=1500).

Screenshots of t-test results:
[GitHub Picture](https://github.com/aparihar1984/MechaCar_Statistical_Analysis/blob/main/Module_15_Deliverables/Screen%20Shots/t-test_results.png)

## Study Design: MechaCar vs Competition

