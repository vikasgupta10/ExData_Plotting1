#Plot3

plot(SelectedData$Time, SelectedData$Sub_metering_1, 
     type="l", ylab="Energy sub metering", cex.lab=0.7)


# add other submeterings as new lines
lines(SelectedData$Time, SelectedData$Sub_metering_2, col="red")
lines(SelectedData$Time, SelectedData$Sub_metering_3, col="blue")

# annotate the graph with a legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red", "blue"), cex=0.5)

# save the output to plot3.png
dev.copy(png,'plot3.png',  width = 480, height = 480)
dev.off()