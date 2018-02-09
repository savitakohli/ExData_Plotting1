## Introduction
Data: household_power_consumption.txt
This data contains Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values
are available.
For this assignment, subset of this data (from 1/2/2007 to 2/2/2007) is used. 
Originally there were 9 variables. For graphical representation, new column='datetime' is added, which is concatenation of Date and Time
function strptime is used to convert column 'datetime'.

 1. "Date"  : Date in format d/m/yyyy                
 2. "Time"  : time in format hh:mm:ss             
 3. "Global_active_power" : household global minute-averaged 						power (in kilowatt)
 4. "Global_reactive_power" : household global minute-averaged 						   reactive power (in kilowatt)
 5. "Voltage" : minute-averaged voltage (in volt)
 6. "Global_intensity" : household global minute-averaged current 				   intensity (in ampere)     
 7. "Sub_metering_1"  : energy sub-metering No. 1 (in watt-hour 					  of active energy). 
 8. "Sub_metering_2"  :  energy sub-metering No. 2     
 9. "Sub_metering_3"  :  energy sub-metering No. 3      
10. "datetime" : New variable created by concatenating Date and Time variables

Steps taken:
1. Fork https://github.com/rdpeng/ExData_Plotting1  
2. cloned this to local computer
3. Create 4 R files
	plot1.R, plot2.R, plot3.R and plot4.R files are created
 Reading full txt in R.
Create subset of the data for dates from '01/02/2007' to '02/02/2007'
Create new variable 'datetime' (concatenation of Date and Time). Converted this variable to DateTime with the function strptime.
Generate plots as per the requirements in each file
Save plots in .png files with width of 480 pixels and height of 480 pixels.

4. 4 png files are generated. plot1.png, plot2.png, plot3.png, plot4.png


5. push the PNG file and R code file to git repository

