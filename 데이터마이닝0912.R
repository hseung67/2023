install.packages('ISLR')
library(ISLR)
dim(Smarket)
head(Smarket)
attach(Smarket)
#Direction에 대한 예측(6개의 변수로)

#상관관계분석
cor(Year, Volume)
plot(Volume, pch=16)

#Fit logistic regression
glm.fit <- glm(Direction~Lag1+Lag2+Lag3+Lag4+Lag5+Volume, data=Smarket, 
               family=binomial(link = 'logit'))
summary(glm.fit)

glm.probs <- predict(glm.fit, type='response')

#up일 확률
glm.probs 
length(Direction)
Direction

glm.pred <- rep('Down', 1250)
glm.pred[glm.probs>0.5] <- "Up"
table(glm.pred)

#실제 true값
table(Direction)

#Down 예측 145 
table(glm.pred, Direction)

#정확도 계산/썩좋지 못함 / training data만 가지고 예측한 값이므로
(145+507) / 1250 *100

#Fit logistic regression using training data
train <- (Smarket$Year < 2005)
table(train)
Smarket.train <- Smarket[train, ] #training data
Smarket.2005 <- Smarket[!train, ] #test data로 false값 선택

dim(Smarket.train)
dim(Smarket.2005)

glm.fit1 <- glm(Direction~Lag1+Lag2, data=Smarket.train, 
                family=binomial)
summary(glm.fit1)

glm.probs <- predict(glm.fit1, newdata = Smarket.2005, type='response')
length(glm.probs)
glm.pred <- rep('Down', 252)
glm.pred[glm.probs>0.5] <- "Up"
table(glm.pred, Smarket.2005$Direction)

#정확도 계산/ 오히려 임의 추측보다 낮은 정확도/ lag3,4,5 너무 낮은 예측도(제외)
(35+106) / 252*100












