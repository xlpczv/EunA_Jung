### Central Limit Theorem ###
d=10000

# my trial #
dice <- sample(6, d, replace=TRUE)
hist(dice, freq=FALSE)

mean.dice <- mean(dice)
cent.dice <- mean(mean.dice)

hist(cent.dice, freq=FALSE)

# solution #
hist(runif(100000)*10,main="")

mean.dice <- numeric(10000)  #data가 들어가 vector 공간 생성하기
for (i in 1:10000) {
mean.dice[i] <- mean(runif(10)*1000)    #주사위 10번씩 돌려서 평균내는 것 1000번 시행
}


hist(mean.dice, freq=FALSE)

mean(mean.dice)
sd(mean.dice)
xv <- seq(0,1000,0.01)      # x축 범위를 0~1000으로 맞춰주고, 소수는 interval. 즉 숫자가 작을 수록 부드러운 line 생김
yv <- dnorm(xv,mean(mean.dice), sd=sd(mean.dice))
lines(xv, yv)
