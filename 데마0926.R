#Bootstrap
install.packages('ISLR')
library(ISLR)
head(Portfolio)
dim(Portfolio)

alpha.fn <- function(data,index){
  X <- data$X[index]
  Y <- data$Y[index]
  
  (var(Y)-cov(X,Y)) / (var(X)+var(Y)-2*cov(X,Y))
}
alpha.fn(Portfolio, 1:100)
set.seed(2)
alpha.fn(Portfolio, sample(1:100, 100, replace = T )) #복원추출

library(boot)
boot(Portfolio, alpha.fn, R=1000) #boot(데이터, 통계량 포함)

# Linear refression
boot.fn <- function(data, index){
  res <- coef(lm(mpg~horsepower, data=data, subset=index)) 
  
}

Auto
data <- Auto
index <- 1:nrow(Auto)
coef(lm(mpg~horsepower, data=data,
        subset=index))


boot.fn(Auto, 1:nrow(Auto))
set.seed(10)
boot(Auto, boot.fn, 1000)
summary(lm(mpg~horsepower, Auto))$coef

































       