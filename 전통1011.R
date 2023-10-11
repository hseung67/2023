#시각화 툴
#이산형
help(barplot)
chart_data <-c(305,450,320,460,330,480,380,520)
names(chart_data) <-c("2014-1","2015-1","2014-2","2015-2","2014-3","2015-3","2014-4","2015-4")
str(chart_data)
chart_data
barplot(chart_data)
barplot(chart_data, horiz=T, 
        ylim = c(0,600), cex.names = 0.6, angle=0.6, space=10,
        col = 1:8,
        ylab ="매출액",
        xlab ="연도별분기현황",
        main ="2014년도vs 2015년도분기별매출현황비교")

data(VADeaths)
str(VADeaths)
head(VADeaths)
barplot(VADeaths,beside=F,
       col=1:5, main="Death Rates in Virginia")
legend('right',c("50-54","55-59","60-64","65-69","70-74"),
       cex=1, fill=1:5)
?legend

help(dotchart)
dotchart(chart_data, col=c("green","red"),
         lcolor="black", pch=11:12,labels=names(chart_data), xlab="매출액",
         main="분기별판매현황점차트시각화", cex=1.2)

pie(chart_data, labels = names(chart_data), 
   border='black', col=1:8, cex=1.2)
title("2014~2015년도분기별매출") 

png("page19.png", width=600, height=600)
pie(chart_data, labels = names(chart_data), border='blue', col=1:8, cex=1.2) 
title("2014~2015년도분기별매출")
dev.off()

#연속형
boxplot(VADeaths)
boxplot(VADeaths,col=2:5)
abline(h=median(VADeaths),lty=6,col="red") #선 추가
?abline

help(hist)
summary(iris$Sepal.Length)
hist(iris$Sepal.Length)
hist(iris$Sepal.Length, breaks=30,
     xlab="sepal length of iris", xlim=c(4.3, 7.9),
     col="black", main="iris sepal length histogram") 
dev.off()
par(mfrow=c(1,2)) # 한화면에여러개의그림그리기
# 빈도수에대한히스토그램
hist(iris$Sepal.Length, xlab="sepal length of iris", col="green",
     main="iris sepal length histogram", xlim=c(4.3, 7.9))
# 확률밀도에대한히스토그램
hist(iris$Sepal.Length, xlab="sepal width of iris",col="mistyrose",
     freq = F, main="iris sepal length histogram", xlim=c(4.3, 7.9)))
lines(density(iris$Sepal.Length), col='blue', lty=5)     

#산점도
set.seed(231011)
price <- runif(10, min=1, max=100)
plot(price, col='black')
# 방법1
plot(price,col="red",xlim=c(0,100),ylim=c(0,100))
abline(a=0,b=1) # 기울기가1, y절편이0 인직선추가
# 방법2
plot(price,col="red",xlim=c(0,100),ylim=c(0,100))
par(new=T) # 기존plot에덮어쓰기
plot(1:100,xlim=c(0,100),ylim=c(0,100),type="l",axes=F,ann=F)
text(75,80,'대각선 추가', col='blue')

par(mar=c(5.1,4.1,1.1,1.1))
par(mfrow=c(2,2))
plot(price,type="l")
plot(price,type="o")
plot(price,type="b")
plot(price,type="h")

plot(price,type="o",pch=5 , lwd=1, lty=1, col=2)
plot(price,type="o",pch=10, lwd=3, lty=2, col=3)
plot(price,type="o",pch=15, lwd=6, lty=3, col=4)
plot(price,type="o",pch=20, lwd=9, lty=4, col=5)
     
#중첩자료 시각화
x <- c(1,2,3,4,2,4)
y <- rep(2,6)
table(x,y)
plot(x,y, pch=16,cex=5)

library(scales)
plot(x,y,pch=16,cex=5,col=alpha("black",0.5))
                                       