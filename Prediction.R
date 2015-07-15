install.packages("e1071")
library("e1071")

# Clustering #
head(mtcars)
bad <- kmeans(mtcars, centers=2)
plot(mtcars$mpg, mtcars$hp, col=bad$cluster, pch=16, cex=2, xlab="MPG", ylap="Horsepower")
testxy()

# Hierarchical in R #
cars_norm <- scale(mtcars)
d <- dist(cars_norm, method="euclidean")
hc <- hclust(d, method="complete")
plot(hc)

# IRIS #
install.packages("klaR")
install.packages("caret")
install.packages("class")
install.packages("e1071")
library("klaR")
library("caret")
library("class")
library("e1071")



head(iris)
summary(iris)
paris(iris[1:4],main="Iris Data (red-setosa, green-versicolor, blue=cirgin)")

x=iris[,5]
y=iris$Species

classifier <- naiveBayes(iris[,1:4],iris[,5])
table(predict(classifer,iris[,-5]),iris[,5])

model = train(x,y,'nb',trControl=trainControl(method='cv',number=10))
predict(model$finalModel,x)$class







# Spam Filtering #
install.packages("ElemStatLearn")
library("ElemStatLearn")

sub=sample(nrow(spam), floor(nrow(spam)*0.9)) #90% 선택
train=spam[sub,]
test=spam[-sub,]

xTrain = train[,-58]
yTrain = train$spam

xTest = test[,-58]
yTest = test$spam

model = train(xTrain,yTrain,'nb',trControl=trainControl(method='cv',number=10))


prop.table(table(predict(model$finalModel,xTest)$class,yTest))



# Years of Education & Income #
ye.model <- lm(income~education, data=sls)
sls$pred <- predict(ye.model, sls)
points(sls$education, sls$pred, col="blue",pch=16)

newsls <- data.frame(education=seq(1,25,0.5))
newsls$pred <- predict(ye.model, newsls)
points(newsls$education, newsls$pred, col="green")
points(newsls$education,newsls$pred,col="green",pch=3)

# Assignment #
GI_GPI <- read.csv("F:\\성균관대학교\\ISS\\GI_GPI(국제평화지수).csv")
attach(GI_GPI)
GPI.model <- lm(GI~GPI,data=GI_GPI)
GI_GPI$pred <- predict(GPI.model, GI_GPI)
plot(GI~GPI)
points(GI_GPI$GPI,GI_GPI$pred,col="blue",pch=16)

GI_HPI <- read.csv("F:\\성균관대학교\\ISS\\GI_HPI(행복지수).csv")
attach(GI_HPI)
HPI.model <- lm(GI~HPI,data=GI_HPI)
GI_HPI$pred <- predict(HPI.model,GI_HPI)
plot(GI~HPI)
points(GI_HPI$HPI,GI_HPI$pred,col="red",pch=100)

newHPI <- data.frame(HPI=seq(0,70,2)) # (시작점, 개수, 간격)
newHPI$pred <- predict(HPI.model,newHPI)
plot(GI~HPI)
points(newHPI$HPI,newHPI$pred,col="blue")
points(newHPI$HPI,newHPI$pred,col="green",pch=0.5)