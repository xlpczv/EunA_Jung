file.choose("")
P <- read.csv("C:\\Users\\Àº¾Æ\\Desktop\\public_recycling_bins.csv")
P
attach(P)
sort(P$Borough)
Bronx <- P[Borough=="Bronx",]
Brooklyn <- P[Borough=="Brooklyn",]
Manhattan <- P[Borough=="Manhattan",]
Queens <- P[Borough=="Queens",]
Staten <- P[Borough=="Staten Island",]

lat.Bronx <-mean(Bronx$Latitude)
lat.Brooklyn <-mean(Brooklyn$Latitude)
lat.Manhattan <-mean(Manhattan$Latitude)
lat.Queens <-mean(Queens$Latitude)
lat.Staten <-mean(Staten$Latitude)

lon.Bronx <-mean(Bronx$Longitude)
lon.Brooklyn <-mean(Brooklyn$Longitude)
lon.Manhattan <-mean(Manhattan$Longitude)
lon.Queens <-mean(Queens$Longitude)
lon.Staten <-mean(Staten$Longitude)

lat <- c(lat.Bronx, lat.Brooklyn, lat.Manhattan, lat.Queens, lat.Staten)
plot(lat)
lon <- c(lon.Bronx, lon.Brooklyn, lon.Manhattan, lon.Queens, lon.Staten)
plot(lon)