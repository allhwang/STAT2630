
# Problem 1


n <- 20
xbar <- 71.2
ssqar <- 16.5
s <- sqrt(ssqar)

df <- n - 1
t.05 <- qt(1-0.1/2, df)
t.025 <- qt(1-0.05/2, df)
t.01 <- qt(1-0.02/2, df)

ci.90 <- c(xbar - t.05 * s/sqrt(n), xbar + t.05 * s/sqrt(n))
ci.95 <- c(xbar - t.025 * s/sqrt(n), xbar + t.025 * s/sqrt(n))
ci.98 <- c(xbar - t.01 * s/sqrt(n), xbar + t.01 * s/sqrt(n))
ci <- rbind(ci.90, ci.95, ci.98)
colnames(ci) <- c("LB", "UB")
ci <- as.data.frame(ci)
ci$diff <- ci$UB - ci$LB
ci



  