setwd("C:\\Users\\IT24610818\\Desktop\\IT24610818_Lab4\\IT24610818_Lab4")

##Question 01
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

fix(branch_data)

attach(branch_data)

##Question 02
str(branch_data)

sapply(branch_data, class)

##Question 03
boxplot(Sales_X1,main="Boxplot for sales distribution",xlab="Sales",outline=TRUE,outpch=8,horizontal=TRUE)

##Question 04
quantile(Advertising_X2)

IQR(Advertising_X2)

##Question 05s
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  
  outliers <- x[x < lower_bound | x > upper_bound]
  
  return(outliers)
}

find_outliers(Years_X3)




