GAP <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(GAP) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(GAP,GAP$Date=="1/2/2007" | GAP$Date =="2/2/2007")


hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")


title(main="Global Active Power")

dev.copy(png,"Plot1.png")
dev.off() 