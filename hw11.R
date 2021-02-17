# Stat 2630: Homework 11
# 1. Let p be the probability of success in a sequence of n Bernoulli trials. Consider testing
# H0 : p = 1/2 versus H1 : p = 1/4
# and rejecting the null if n = 30 trials results in 10 or fewer successes.
# (a) What is the size of the test?
# (b) What is the power of the test?

# (a)
pbinom(10, 30, 0.5)

# (b)
pbinom(10, 30, 0.7)

# 2. Suppose that lifetime of a tire (in miles), say X, is normally distributed with mean θ and
# standard deviation σ = 4000. Past experience indicates that θ = 30000 miles, but the
# manufacturer claims that a new production process has increased the mean lifetime. Given
# n independent observed values x1, x2, . . . , xn, we want to test
# H0 : θ = 30000 versus H1 : θ > 30000
# using a rejection rule of the form x ≥ c.
# (a) Write down the formula for the benchmark c so that the test has size α = .02.
# (b) Suppose that n = 100. Calculate the value of c so that the test has size α = .02 and
# calculate the power of the test at θ = 35000.
# (c) Suppose that n = 400. Calculate the value of c so that the test has size α = .02 and
# calculate the power of the test at θ = 35000.

# (a)
alpha <- 0.02
z_alpha <- qnorm(1-alpha, 0, 1)
c <- function(n) {
  c_value <- z_alpha * 4000/sqrt(n) + 30000
  return(c_value)
}

# (b)
n <- 100
c(n)
a <- (c(n) - 35000)/(4000/sqrt(n))
pnorm(-a,0,1)

# (c)
n <- 400
c(n)
a <- (c(n) - 35000)/(4000/sqrt(n))
pnorm(-a,0,1)



