# Problem 1.

## (a)

bb <- read.table("bb.txt", header = F)
bb <- as.numeric(bb)
n.pitchers_less_220 <- length(which(bb <= 220))
n <- length(bb)
n.pitchers_less_220/n

## (b)

mean(bb)
v <- 1/length(bb)*sum((bb - mean(bb))^2)
pnorm(220, mean(bb), sqrt(v))

# Problem 2

## (a)

x <- c(6, 7, 9, 15, 10, 13, 11, 7, 2, 17)
length(which(x == 6))/length(x)

## (b)


lamda <- mean(x)
# exp(-9.7)*(9.7^6)/factorial(6)
dpois(6, lamda)