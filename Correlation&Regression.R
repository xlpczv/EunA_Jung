############### just practice #################
vec <- c(20,32,35,34,40,51,52,56,57,68, 23,34,36,44,42,51,54,57,54,62)
mat <- matrix(vec,nrow=10,ncol=2)
mat
dimnames(mat) <-
+ list(rowname=paste("row",1:10,sep="."),
+ colname=paste("col",1:2,sep="."))
cor(col.1,col.2)

############### solution ##################
x <- c(20,32,35,34,40,51,52,56,57,68)
y <- c(23,34,36,44,42,51,54,57,54,62)
cov(x, y, use = "everything",
    method = c("pearson", "kendall", "spearman"))
cor.visit <- cor(x, y, use = "everything",
    method = c("pearson", "kendall", "spearman"))

###2###
#a. Display the relationship between first and second visit dollar amounts?
plot(x,y)

#b. Describe the pattern in part (a) briefly. Is there a relationship? Is it positive or negative?
#   Is it linear or non linear?
# - First visit and second visit dollar amounts are highly related positively. It looks also linear.

#c. Calculate the correlation coefficent between the amount of money spent on the first visit and the second visit.
cor.visit <- cor(x, y, use = "everything",
    method = c("pearson", "kendall", "spearman"))
cor.visit
# - It's about 0.97, so I can say that two visit dollar amounts are highly correlated positively.

#d.
SE <- sqrt((1-cor.visit^2)/(length(first)-2))
SE
# It refers the dispersion of sample deviation.

#e.
cort <- cor.test(x,y)
cort
cort$conf.int


###3###
#a.
x3 <- x+30
y3 <- y+30
cor.test(x3,y3)   ## extreme value -> change correlation coefficient.

#b.
x4 <- 100*x
y4 <- 100*y
cor.test(x4,y4)
# Coefficient doesn't be affected by adding or multiplying numbers.

###4###
#a.
r <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
m <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)
plot(r,m)
# It seems that there is some correlation between home range size and mortality percentage. However, there is one value that looks like an outlier.

#b.
lmrm <- lm(m~r)                # lm(y~x)
abline(lmrm)

#c. Ho : home range size does not predict infant mortality (beta=0)
#   H1 : home rane size does predict infant mortality (beta!=0)
summary(lmrm)
# From this data, we can get a good line having good intercept and good predictor. P-values of these two value are really small.
# However, R-Squared value is not that high, so each value of data is somewhat far from the line.

#d.
rn <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
mn <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25)
lmrmn<- lm(mn~rn)
abline(lmrmn)
summary(lmrmn)
# With the data not having an outlier, we can get a line with little bit lower slope.
# However, p-value of predictor gets higher, even higher than 0.05. R-squared number gets also lower.


### prediction ###
# b3 <- mat.or.vec(20,)...................

