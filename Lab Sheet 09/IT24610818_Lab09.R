setwd("C:\\Users\\Thisaja\\Downloads\\IT24610818_Lab09")

#Exercise
#Question 01
#Part 1

#Generate a Random sample of size 25 for the baking time
y <- rnorm(25, mean = 45, sd = 2)
print(y)

#Part 2

#Test whether the average baking time is less than 46 minutes at a 5% level of significance
t.test(y, mu=46, alternative= "less")
