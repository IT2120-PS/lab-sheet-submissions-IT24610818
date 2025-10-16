setwd("C:\\Users\\Thisaja\\Downloads\\Lab 10-IT24610818")

# (i) 
# Null Hypothesis (H0): Customer choose all four snack types equally
# (pA = pB = pC = pD = 0.25).
# Alternative Hypothesis (H1): At least one snack type has a different
# probability of being chosen.

# (ii)
# Observed frequencies for snack types (A,B,C,D)
observed <- c(120, 95, 85, 100)

# Expected probabilities (equal preference for each type)
prob <- c(0.25, 0.25, 0.25, 0.25)

# Perform Chi-squared test
chisq_test <- chisq.test(x=observed, p=prob)

# Display the test results
chisq_test

# (iii)
# At 5% level of significance:
# Since p-value = 0.094 > 0.05, we fail to reject the null hypothesis (H0)
# Therefore, there is no significant evidence that customers prefer one snack type over another.
# Their choices appear to be equally likely.

