
# Define the source for the function for getting data
source("~/Coursera/DSspec/ExpDataAn/week1/retrieveAndSubsetData.R")

# Get the data
data <- retrieveAndSubsetData()

# Set labels
mainLabel = "Global Active Power"
xLabel = "Global Active Power (kilowatts)"
yLabel = "Frequency"

# Plotting time
hist(data$Global_active_power, 
     main=mainLabel, xlab=xLabel, ylab=yLabel, 
     col="Red")

# Save plot
dev.copy(png, file="~/Coursera/DSspec/ExpDataAn/week1/plot1.png")
dev.off()