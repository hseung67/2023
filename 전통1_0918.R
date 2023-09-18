score <- 90

if(score>=90){
  result <- 'A'
}else if(score>=80){
  result <- 'B'  
}else if(score>=70){
  result <- 'C'
}else{
  result <- 'D'
}
result

getwd()
setwd('C:/Users/USER/Desktop/전통1_재')

#if문은 길이가 1인 벡터 스칼라에만 적용 가능
score <- c(85, 60)
result <- c('우수', '노력')
if (score>80) {result <- '우수'} #score가 80초과이면 result에 우수 할당

student <- read.table("Lecture5_data.txt", header=T)
student

#ifelse
score <- c(85,60)
ifelse(score>=80,
       '우수',
       ifelse(score>=70,
              '보통', '노력'))
ifelse(student$BMI>25, '과체중', '정상')

#switch
switch('name', id='hong', pwd='1234', age=105, name='홍길동')
switch('gender', id='hong', pwd='1234', age=105, name='홍길동')

x<-5; y <-7
switch('plus', plus=x+y, minus=x-y)

#which문 
name <- c('kim', 'lee', 'choi', 'park')
which(name=='choi')

no <- 1:5
name <- c('hong', 'lee', 'kang', 'yu', 'kim')
score <-c(85,78,89,90,74)
exam <-data.frame(학번=no,이름=name,성적=score)
which(exam$성적>=85)
exam[exam$성적>=85, ]

#for문
n <- 1:10
for(i in n){
  print(i*10)
}
for(i in 1:10){
  if(i<=5) next
  print(i*10)
}
for(i in 1:10){
  if(i>=5) break
  print(i*10)
}
for(i in 1:10){
  if(i <=5){
    print(i) #5이하면 그대로 출력
  }else{
    print(i*10) #5초과면 X10으로 출력
  }
}

#while문
i <- 1
while(i<=5){
  i <- i+1
  print(i)
}
i <- 1
while(i<=5){
  print(i)
  i <- i+1
}

i <- 1
while(i<=5){
  print(i*10)
  if(i%%3==0) next #이번 반복을 스킵
  i <- i+1
}
i <- 1
while(i<=5){
  print(i*10)
  if(i %% 3==0) break
  i <- i+10
}

i <- 1

while(i<=10){
  if(i<=5){
    print(i) #5이하면 그대로 출력
  }else{
    print(i*10) #5초과면 x10으로 출력
  }
  i <- i+1
}
#repeat문
i <- 1
repeat{print(i*10)
  i <- i+1  
}
i <- 1
repeat{print(i*10)
  if(i>=5) break
  i <- i+1
}



























