plot4 <- function() {
  par(mfrow=c(2,2))
  
  ##this is plot 1 creation
  plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  ##this is plot 2 creation
  plot(df$timestamp,df$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##this is plot 3 creation
  plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(df$timestamp,df$Sub_metering_2,col="red")
  lines(df$timestamp,df$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
  
  #this is plot 4 creation
  plot(df$timestamp,df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
<<<<<<< HEAD
  #OUTPUT
  dev.copy(png, file="plot4.png", width=712, height=435)
=======
  #this is the output for the final plot4.png
  dev.copy(png, file="plot4.png", width=480, height=480)
>>>>>>> f273743621f53aa557870a9b630f9a4dfaee5ae8
  dev.off()
  cat("plot4.png has been saved in", getwd())
}
plot4()
