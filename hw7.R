# Problem 1.
## (a)

# similar to Example 4.1.1 in 2630day7b
obs <- c(6, 7, 9, 15, 10, 13, 11, 7, 2, 17)
Llamda <- function(lamda){
  prod(dpois(obs, lamda))
}

x<-seq(1,20, by = 0.5)
y <- NULL
for(i in 1:length(x)){y[i]<-Llamda(x[i])}
plot(x,y,type="l")

## (b)

optimize(Llamda,interval=c(1,15),maximum=TRUE)
