# MechaCar_Statistical_Analysis

## Project Overview
The goal of this project is to review the production data for AutosRUs’ newest prototype, the MechaCar, with the hope that the findings may help manufacturing.

## Linear Regression to Predict MPG

The first analysis, a linear regression, was run to predict the miles per gallon (MPG) of 50 prototype MechaCars based on vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. The results of the linear regression were as follows:

![Linear_Regression_to_Predict_MPG](/Linear_Regression_to_Predict_MPG.png).

Based on the data, we can argue that vehicle length and ground clearance have a significant impact on MPG. Although a statistically significant intercept suggests there are other variables that can contribute to variation in MPG, the robust r-squared (and corresponding statistically significant p-value) suggests substantial predictive power given this model. That said, more testing among the explanatory variables is likely needed to confirm independence. 

## Summary Statistics on Suspension Coils

The next analysis were tests of suspension coil weight capacities to determine if the manufacturing process was consistent across production lots. The results of the analysis are as follows:

#### Descriptive Statistics for All Lots 

![PSI_Total_Summary](/PSI_Total_Summary.png).

#### Descriptive Statistics by Lot

![PSI_Lot_Summary](/PSI_Lot_Summary.png).

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. At first glance, results for all lots combined suggest that this standard was met. A closer look by lot, however, shows that total performance was driven by Lots 1 and 2. Lot 3 did not meet the standard. The manufacturing process was not consistent across production lots.
