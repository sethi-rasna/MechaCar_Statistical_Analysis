# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - Vehicle Length and Ground Clearance provide the most non-random amount of variance in the evaluation of mpg.
    
  - Is the slope of the linear model considered to be zero? Why or why not?
      - The slope of this model is positive and non-zero. This is because most of the characteristics evaluated on mpg have a positive slope. The two that have a one slope is AWD. It should also be noted that the intercept is negative as well.
      
  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
      - There are only two factors in this equation that absolutely effect the mpg of MechaCar protoptypes and those factors again are Vehicle Length and Ground Clearance. The rest have random amounts of variance in determining mpg.

## Summary Statistics on Suspension Coils

  - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - For overall production this is not an issue. As shown here:
   
   ![summary psi](https://user-images.githubusercontent.com/104734224/190880143-3c90cbda-a467-43ff-8f8d-5dcb52e54911.png)

    - However for each lot, there is a huge difference in the variance of Lot 3 particularly. It would be worth troubleshooting this variance, as it is over 100 pounds per square inch. 
    
![lot summary](https://user-images.githubusercontent.com/104734224/190880181-cd58ba57-df3e-4471-8b83-35932576e70b.png)

## T-Tests on Suspension Coils

 - All of the t-test did not pass. All of the means were not equal to the population mean of 1500.

 - Overall, the average was pretty close the population mean, as seen below:

![overall ttest](https://user-images.githubusercontent.com/104734224/190880367-e4b06882-74e2-4e00-9652-74911d4747b7.png)

  - But as we will see, lot 3 threw off the mean of the over all lots. Lot 1 had the closest mean to the population mean.

  
  ![lot1 ttest](https://user-images.githubusercontent.com/104734224/190880411-0f1de9be-54ab-492e-a3a5-202dbe42619b.png)
  ![lot 2 ttest](https://user-images.githubusercontent.com/104734224/190880417-5f1831a8-260f-4f2a-b806-4e57a80113e4.png)
  ![lot 3 ttest](https://user-images.githubusercontent.com/104734224/190880429-dcee5228-4c1d-43c0-9d9f-db95ecaf478b.png)
  
## Study Design: MechaCar vs Competition

  - What metric or metrics are you going to test?
      - For this test, I would like to compare how the price of a vehicle is correlated with highway and city fuel efficient miles a vehicle gets.
      
  - What is the null hypothesis or alternative hypothesis?
      - To do this, I would set my null hypothesis as: If the MechaCar is not fuel efficient on highways or in cities, the cost of the vehicle will be lower the average vehicle in it's marketshare. The alternative hypothesis would then be: if the MechaCar is fuel efficient on highways and in cities, the the cost of the vehicle will be higher than the average vehicle in it's marketshare.
      
  - What statistical test would you use to test the hypothesis? And why?
      - I would run a correlation/linear regression test on this comparing the prices of vehicles in the marketshare for the MechaCar, including the MechaCar, with the number of fuel efficent miles each vehicle gets. The independent variable in this case would be the vehicle price and the dependent variable would be the number of fuel efficient miles each vehicle gets. Given the assumpution made in the null and alternative hypothesis, we would hope to see a positive correlation and a upward sloping linar regression in this model.
  
  - What data is needed to run the statistical test?
       - The data needed for this would be the fuel efficient miles (both city and highway) for all the vehicles (regardless of make or model) that are in the same marketshare as the MechaCar. Additionally, this analysis would call for the prices of those vehicles too. It would be interesting to have listed the make and model of each car as well that way we could compare certains makes against one another and develop more in depth analysis.
        
