
# Define the source for the function for getting data
source("~/Coursera/DSspec/ExpDataAn/week1/retrieveAndSubsetData.R")

# Get the data
data <- retrieveAndSubsetData()

# Set labels
xLabel = ""
yLabel = "Global Active Power (kilowatts)"

# Plotting time
with(data, {plot(data$Sub_metering_1~data$DateAndTime, type="l", 
                xlab = xLabel, ylab=yLabel)
     lines(data$Sub_metering_2~data$DateAndTime, 
           col="Red")
     lines(data$Sub_metering_3~data$DateAndTime, 
           col="Blue")}
     )
  legend("topright", col=c("black", "red", "blue"), 
         lty=1, lwd=2, 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Save plot
dev.copy(png, file="~/Coursera/DSspec/ExpDataAn/week1/plot3.png")
dev.off()