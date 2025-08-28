setwd("C:\\Users\\IT24610818\\Desktop\\Lab05_IT24610818")

#Question 01
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

fix(Delivery_Times)

names(Delivery_Times)<-c("X1")

attach(Delivery_Times)

#Question 02
histogram<-hist(X1,main="Histogram for Delivery Times (Minutes)",breaks = seq(20,70,length = 10),right = FALSE)

# ---Question 03---
# The histogram shows that delivery times are approximately symmetric.
# Most delivery times fall between 35 and 45 minutes.
# The shape is bell-shaped, resembling a normal distribution.
# There are fewer observations at both the lower and upper ends.

#Question04
breaks<-round(histogram$breaks)
freq <- histogram$counts

cum.freq <- cumsum(freq)
new<-c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }
  else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type='l',main = 'Cumalative Frequency Polygon for Delivery Times',
     xlab="Delivery Times",ylab="Cumalative Frequency",ylim=c(0,max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)




