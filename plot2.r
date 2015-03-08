png("plot2.png", width=480, height=480, units="px")

# use type='n' to make a place-holder
with(power_consumption_sub, plot(x=datetime, y=Global_active_power, type='n',
                                 ylab="Global Active Power (kilowatts)",
                                 xlab=""))

# add the lines on top of the place-holder
with(power_consumption_sub, lines(x=datetime, y=Global_active_power))
dev.off()