??sequence
help.search('sequence')

num <-c(1,2,3,NA,5,6,7,NA,9,NA)# 결측이3개존재
mean(num)

help(mean)
mean(num,na.rm=T)

mysum <-function(a,b)
  {if(a==b) stop("'a' and 'b' are same!")
  a+b
}
mysum(2,3)

mysum(2,2)

rm(list=ls())myminus <-function(a,b)
  {if(a==b) warning("'a' and 'b' are same!")
  abs(a-b)
}
myminus(1,8)
myminus(4,4)

FtoC1 <-function(F){
  res <-(F-32)*5/9
}
FtoC1(50)
FtoC2 <-function(F){
  return((F-32)*5/9)
}
FtoC2(50)
FtoC3 <-function(F){
  (F-32)*5/9
}
FtoC3(50)
FtoC4 <-function(F){
  res <-(F-32)*5/9
  return(res)
}
FtoC4(50)
FtoC5 <-function(F){
  res <<-(F-32)*5/9
  return(res)
}
FtoC5(50)

pytha <-function(a,b){
  res <-sqrt(a^2+b^2)
  return(res)
  }
pytha(2,3)

gugudan <-function(x,y){
  for(i in x){
    for(j in y){
      cat(paste0(i,"X",j,"=",i*j))
      cat("\n")
      }
    }
  }
gugudan(1:9,1:9)

#실습문제1
cal <- function(expression,a,b){
 switch(expression, plus=a+b, minus=a-b, multiple=a**b, devide=a%%b)
}
cal(1,2)

#실습문제2
r <- function(x){
  cir <- x*2*pi
  size <- x^2*pi
  c(cir,size) #list로 출력
}
r(3)

a <- matrix(1:9, ncol = 3, byrow = T)
b <- matrix(c(6,2,3,7,4,8,1,5,9), ncol=3)

rm(list=ls())
my_function <-function(x){
  x+y
}
my_function(6)
y <- 5
my_function(6)

#attach
attach(iris)
Species
detach(iris)
Species

#????????????1 
calculator <- function(expression, a, b){
  switch(expression, plus=a+b, minus=a-b, multiple=a*b, divide=a/b)
}
calculator('plus', 5, 2)
calculator('minus', 5, 2)

#????????????2
circle2 <-function(r){
  circumf <-2*pi*r # ????????????
  area <-pi*r^2 # ????????????
  c(circumf,area) #c????????? ?????? ?????? ??????
}

circle2(5)  

#????????????3
A <-matrix(1:9,ncol=3,byrow=T)
B <-matrix(c(6,2,3,7,4,8,1,5,9),ncol=3)
mat_TM <-function(matA,matB){
  res1 <-t(matA)
  res2 <-t(matB)
  res3 <-matA%*%matB
  list(A_transpose=res1, # A????????????????????? / list??? ????????? ??????!
       B_transpose=res2, # B?????????????????????
       multi_AB=res3) # A??????X B?????? 
}
mat_TM(A,B)

