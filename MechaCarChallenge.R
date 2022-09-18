

5:01
#Deliverable 1
#3
library("dplyr")
#4 Read the csv and import and df
MechaCar<-read.csv("MechaCar_mpg.csv", header=TRUE, sep=",")
MechaCar
#5 Linear regression using ln
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)
#6 summary function:
summary(mecha_lm)#summary statistics
#Deliverable 2
#2
Suspension_data<-read.table("Suspension_Coil.csv", header=TRUE, sep=",")
Suspension_data
#3
#calculating summary stats for a total dataset
summary(Suspension_data)
#calculating summary stats for PSI
summary(Suspension_data$PSI)
#calculating st. dev for PSI
sd(Suspension_data$PSI)
#Calculating total_summary PSI
summarize_PSI <- Suspension_data%>%summarize (Mean_PSI=mean(PSI), Median_PSI=median(PSI),variance_PSI=var(PSI), stdev_PSI=sd(PSI), .groups='keep')
#4
#Calculating lot_summary
lot_summary<- Suspension_data%>%group_by(Manufacturing_Lot)%>% summarize (Mean=mean(PSI), Median=median(PSI),variance=var(PSI), stdev=sd(PSI), .groups='keep')

#Deliverable 3:
# Read in the csv file
suspension_data <- read.csv("Suspension_Coil.csv",stringsAsFactors = F, check.names = F)
#1
#Calculating if PSI is statistically different from the population mean of 1500
# Perform t-test across all Lots
t.test(suspension_data$PSI,mu = 1500)
#2
# Perform t-test on Lot 1
t.test(subset(suspension_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Perform t-test on Lot 2
t.test(subset(suspension_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Perform t-test on Lot 3
t.test(subset(suspension_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)






