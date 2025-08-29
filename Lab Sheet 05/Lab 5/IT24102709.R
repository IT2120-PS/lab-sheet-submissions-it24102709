setwd("C:\\Users\\ADMIN\\OneDrive\\Desktop\\Lab 5")

data<-read.table("Data.txt", header = TRUE, sep = ",")
fix(data)
attach(data)

names(data)<-c("X1", "X2")
attach(data)

hist(X2,main = "Histogram for Number of Shareholders")

histogram<-hist(X2,main = "Histogram for Number of Shareholders",breaks = seq(130,270,length = 8),right = FALSE)
?hist

breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

classes <- c()

for(i in 1:length(breaks)-1) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}

cbind(Classes = classes, Frequency = freq)

lines(mids, freq)
plot(mids, freq, type = 'l', main = "Frequency polygon for Shareholders",xlab = "Shareholders", ylab = "Frequency", ylim = c(0,max(freq)))

cum.freq <- cumsum(freq)
new<-c()

for (i in 1:length(breaks)) {
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks,new,type = 'l',main = "Cumalative Frequency Ploygon for Shareholders",
     xlab = "Shareholders",ylab = "Cumulative Frequency",ylim = c(0,max(cum.freq)))

cbind(Upper = breaks, cumFreq = new)

#Exercise

Delivery_Times<-read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

fix(Delivery_Times)
attach(Delivery_Times)
names(Delivery_Times)
names(Delivery_Times)<-c("Y1")
attach(Delivery_Times)

hist(Y1,main = "Histogram for Deliver Times using nine class intervals")
histogram<-hist(Y1,main = "Histogram for Deliver Times using nine class intervals",
                breaks = seq(20,70,length = 10),right = FALSE)
# The range is 20 to 70
# Creates 10 points for 9 intervals

breaks <- histogram$breaks
freq <- histogram$counts

cum_freq <- cumsum(freq)

plot(breaks[-1], cum_freq, type = 'b', 
     main = "Ogive for Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq)))

points(breaks[1], 0, pch = 19)
lines(c(breaks[1], breaks[1]), c(0, 0)) 








