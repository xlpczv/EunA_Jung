# pnorm -> cummulative distribution function #
pnorm(2)-pnorm(-2)

# Example #
control = c(91,87,99,77,88,91)
treat = c(101,110,103,93,99,104)
t.test(control,treat,alternative="less",var.equal=TRUE)

### Assignment2 ###
# Q1. #
# (a)
data <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,
101,82,83,74,91,83,98,95,111,99,120,93,84)
m <- mean(data)
m
# (b) - This estimate is likely to equal the population parameter because sample mean is a point estimate of population mean. However, it is really hard to estimate the exact population mean from sample means.
# (c)
SE <- sqrt(sd(data)^2/30)
show(SE)
# (d) - standard error measures the probability of error in specific distributions
# (e)
alpha <- 0.05
z.quantile <- qnorm(1-alpha/2)
Low <- m-z.quantile*SE
High <- m+z.quantile*SE
show(Low)
show(High)
# (88.32607,96.07393)
# (f) - If we get sample mean interval 100 times, we can get population mean 95 times in intervals. This interval in (e) means that it is one of those many sample mean intervals.

# Q2. #
# H0 : male and females have the same mean cholesterol concentrations.
# H1 : male and females don't have the same mean cholesterol concentrations.
Male <- c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
Female <- c(223.4,221.5,230.2,224.3,223.8,230.8)
t.test(Male, Female)
# result : We cannot reject H0.

# Q3. #
# (a) - False. We can not say that treatment has only a small effect, because our null hypothesis was not about degree. In addition, we don't know what number means small.
# (b) - True. T-test says treatment has some effect.
# (c) - False. The probability of committing a Type 1 error is same as alpha.
# (d) - False. We cannot deduct the exact value, because we don't know the value we can assume as true population value.
# (e) - True. 0.04 is bigger than 0.01, so if the significance level is changed into 0.01, we cannot reject H0.

# Q4. #
# H0 : the red blood cells of person B are 1.5 times the volume of person A.
# H1 : the red blodd cells of person B are not same sa 1.5 times the volume of person A.
A <- c(248,236,269,254,249,251,260,245,239,255)
B <- c(380,391,377,392,398,374)
a <- 1.5*A
t.test(a,B)
# result : we cannot reject H0

# Q5. #
# Q. What is the difference between the standard error of mean and the standard deviation? Provide example data that illustrates their difference.
# A. Standard deviation gives information about how far sample values are apart from sample mean. Standard error gives information about how point estimate is far apart from population value inferred. Therefore, we can draw only one SD from one sample, but we can draw a lot of SDs from one sample according to the sample size the type of distribution.


