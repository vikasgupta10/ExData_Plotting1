#Plot 1

with(SelectedData,hist(Global_active_power, col = "red",
                       breaks = 20,xlab = "Global Active Power (kilowatts)",
                       main = "Global Active Power",ylim=c(0,1200)))

dev.copy(png,'plot1.png',  width = 480, height = 480)
dev.off()