retrieveAndSubsetData <- function() {
  # No hardcoded paths in this script
  dataPath <- "~/Coursera/DSspec/ExpDataAn/ExData_Plotting1/week1/household_power_consumption.txt"
  data <- read.csv(dataPath, header = T, sep=";", na.strings="?")

  dateFormat <- "%d/%m/%Y"
  # Change dates on whole data set to be able to subset
  data$Date <- as.Date(data$Date, format = dateFormat)

  # Do the subsetation (Think the tune "do the locomotion")
  data <- data[(data$Date >= "2007-02-01" & data$Date <= "2007-02-02"),]

  # Change time only on the subsetted data set (unneccessary to do it for dates we are not going to use)
  data$DateAndTime <- as.POSIXct(paste(as.Date(data$Date), data$Time))
  
  return(data)
}