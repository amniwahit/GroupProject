
data3 <- select(data, c(X, State))
data3

#Histogram
attach(data)
hist(X2017,main="Unemployment Rate From Each State in Malaysia for Year 2017",col="skyblue")

attach(data)
hist(X2018,main="Unemployment Rate From Each State in Malaysia for Year 2018",col="skyblue")

attach(data)
hist(X2019,main="Unemployment Rate From Each State in Malaysia for Year 2019",col="skyblue")


#Boxplot
boxplot(X2017 ~ X, data = data3, xlab = "Year 2017",
        ylab = "Rate", main = "Unemployment Rate of Year 2017 in Each State")

boxplot(X2018 ~ X, data = data3, xlab = "Year 2018",
        ylab = "Rate", main = "Unemployment Rate of Year 2018 in Each State")

boxplot(X2019 ~ X, data = data3, xlab = "Year 2019",
        ylab = "Rate", main = "Unemployment Rate of Year 2019 in Each State")


