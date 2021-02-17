# Stat 2630: Homework 10
# A random sample of 172 women were given the flu vaccine while pregnant, 
# and a control sample of 168 women were not given the vaccine. 
# Calculate the following (you may use R for calculations, 
# but show or explain your solution.)
# 
# 1. 8.4% of the control group gave birth before 37 weeks of gestation.
# (a) Calculate a standard error for this estimate.
# (b) Calculate a large sample 95% confidence interval for the population proportion p.

n1 <- 172
n2 <- 168
# (a)
phat <- 0.084
se <- sqrt(phat*(1-phat)/n2)
se

# (b)
LB <- phat - 1.96 * se
UB <- phat + 1.96 * se
cbind(LB, UB)

# 2. The average birthweight for the vaccine group was 3.13 kg 
# with a standard deviation of .53 kg. The average birthweight 
# for the control group was 3.02 kg with a standard deviation of .45 kg.
# (a) Estimate the mean difference in birthweight ∆ = µ1 − µ2.
# (b) Calculate a standard error for your estimate in (a).
# (c) Calculate a large sample 95% confidence interval for µ1 − µ2.

xbar <- 3.13; s1 <- .53
ybar <- 3.02; s2 <- .45

# (a)
delta <- xbar - ybar
delta

# (b)
se <- sqrt(s1/n1 + s2/n2)
se

# (c)
LB <- delta - 1.96 * se
UB <- delta + 1.96 * se
cbind(LB, UB)

