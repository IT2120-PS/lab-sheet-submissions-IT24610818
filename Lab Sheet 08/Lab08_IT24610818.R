setwd("C:\\Users\\Thisaja\\Downloads\\Lab 08-IT24610818")

data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

#Question_01
colnames(data) <- c("Weight")

population <- data$Weight
popmn <- mean(population)
popvar <- var(population)
popsd <- sqrt(popvar)

print(paste("Population Mean:", popmn))
print(paste("Population SD:", popsd))

#Question_02
samples <- c()
n <- c()

for (i in 1:25){
  s <- sample(population, 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s',i))
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)
s.sd <- sqrt(s.vars)

print(paste("Sample Mean:", s.means))
print(paste("Sample SD:", s.sd))

#Question_03
samplemean <- mean(s.means)
samplevars <- var(s.means)
samplesd <- sqrt(samplevars)

popmn
samplemean

truevar = popsd / 6
samplesd

truevar = popvar/6
samplevars

truesd<-sqrt(truevar)
samplesd