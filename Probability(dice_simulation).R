
### Dice Simulation ###
# sample()
# runif()
# hist()

# for.loop

# number of dice rolls
d=10000000

# role two dice 10 times
dice1 <- sample(6,d,replace=TRUE)
dice2 <- sample(6,d,replace=TRUE)

dice_roll <- dice1 + dice2
hist(dice_roll)
hist(dice_roll, freq=FALSE)
dis.dice <- prop(dice_roll)

var(dice_roll)
mean(dice_roll)

# freq=FALSE => density ǥ���� �޶�� ��. ��, Ȯ���е��Լ��� ���� �� ����

# cummulative distribution
cum.dice <- ecdf(dice_roll)
plot(cum.dice)

# plot�ΰ� �Ѳ����� �׸���
plot(dice_roll,type="l",col="red")
plot(cum.dice,type="l",col="green")


### Distributions ###

# Normal Distribution #
n <- rnorm(10000, mean = -100, sd = 100)
plot(n)
hist(n)
hist(n, freq=FALSE)

# Z Scores #,

# Q. Suppose that X ~ N(3,5) Find Pr(X>1)

x <- rnorm(mean=3, sd=5)
z <- (x-3)/sqrt(5)
z <- -2/sqrt(5)
z
pnorm(-0.8944, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
1-pnorm(-0.8944, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)


# plot the data -> qqplot #



