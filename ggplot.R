install.packages("ggplot2")
library("ggplot2")

file.choose()
GIII <- read.csv("F:\\성균관대학교\\ISS\\GI_GII(성불평등지수).csv")

qplot(GI,GII,data=GIII)
qplot(log(GI),log(GII),data=GIII)