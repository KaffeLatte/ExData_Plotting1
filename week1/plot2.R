
# Define the source for the function for getting data
source("~/Coursera/DSspec/ExpDataAn/week1/retrieveAndSubsetData.R")

# Get the data
data <- retrieveAndSubsetData()

# Set labels
xLabel = ""
yLabel = "Global Active Power (kilowatts)"

# Plotting time
plot(data$Global_active_power~data$DateAndTime, 
     type="l", 
     xlab = xLabel, ylab = yLabel)

# Save plot
dev.copy(png, file="~/Coursera/DSspec/ExpDataAn/week1/plot2.png")
dev.off()