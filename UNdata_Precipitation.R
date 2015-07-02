# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Jevin West
# Date:  7/2/2015

#clean variables
rm(list=ls(all=TRUE))

# read in data
P <- read.csv("/Users/jevinwest/Documents/Teaching/SKKU/Data/UNdata_precipitation.csv")

# (1) Compare the precipitationt from 1999 to 2005.  Are they different?


file.choose("")

P <- read.csv("C:\\Users\\은아\\Desktop\\UNdata_precipitation.csv")
attach(P)

rm(list=ls(all=TRUE))

sort(Year)
# 1990,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009

y1990 <- P[Year==1990,]
y1995 <- P[Year==1995,]
y1997 <- P[Year==1997,]
y1998 <- P[Year==1998,]
y1999 <- P[Year==1999,]
y2000 <- P[Year==2000,]
y2001 <- P[Year==2001,]
y2002 <- P[Year==2002,]
y2003 <- P[Year==2003,]
y2004 <- P[Year==2004,]
y2005 <- P[Year==2005,]
y2005 <- P[Year==2005,]
y2006 <- P[Year==2006,]
y2007 <- P[Year==2007,]
y2008 <- P[Year==2008,]
y2009 <- P[Year==2009,]

y1999
t.test(log10(y1999$Value),log10(y2005$Value))
# P-value is over 0.05, so the difference in means is equal with 95% confidence

# (2) Precipitation for all countries over time.
+ average or each counrty, and time flow

m.1990 <- mean(y1990$Value)
m.1995 <- mean(y1995$Value)
m.1997 <- mean(y1997$Value)
m.1998 <- mean(y1998$Value)
m.1999 <- mean(y1999$Value)
m.2000 <- mean(y2000$Value)
m.2001 <- mean(y2001$Value)
m.2002 <- mean(y2002$Value)
m.2003 <- mean(y2003$Value)
m.2004 <- mean(y2004$Value)
m.2005 <- mean(y2005$Value)
m.2006 <- mean(y2006$Value)
m.2007 <- mean(y2007$Value)
m.2008 <- mean(y2008$Value)
m.2009 <- mean(y2009$Value)

m1 = matrix(c(m.1990,m.1995,m.1997,m.1998,m.1999,m.2000,m.2001,m.2002,m.2003,m.2004,m.2005,m.2006,m.2007,m.2008,m.2009))
m1
plot(m1)


###########울고싶다ㅠㅠㅠ################
1.
y1999 <- P[P$Year==1999,]
y2005 <- P[P$Year==2005,]
t.test(log10(y1999$value),log10(y2005$value))

2.

nP <- array(1999) # arrray(2차원이면 행렬) 함수를 이용하여 모든 원소가 1인, 10 by 4 행렬 생성
np
