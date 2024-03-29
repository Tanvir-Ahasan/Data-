getwd()
setwd("C:\\Users\\tajes\\Downloads")
data <- read.csv("energy_data_2020_2022.csv", header = TRUE)
par(mfrow=c(1,1))
hist(data$consum, main = "Histogram of Consumption", xlab = "Consumption (KwH)", col = "lightblue")
hist(data$solprod, main = "Histogram of Solar Production", xlab = "Solar Production (KwH)", col = "lightgreen")
hist(data$temp, main = "Histogram of Temperature", xlab = "Temperature (Celsius)", col = "lightcoral")

par(mfrow=c(1,1))
quantile(data$consum,probs=0.9)
min(data$consum)
quantile(data$solprod, probs=0.9)
min(data$solprod)
quantile(data$temp, probs=0.9)
min(data$temp)

data_setting=data$setting
total_days=length(data_setting)
total_days_on=data_setting[data_setting != "Off"]
length(total_days_on)/total_days
total_days_low=data_setting[data_setting != "Low"]
length(total_days_on)/total_days
data_solar=data$solprod
data_solar_low =data_solar[data_solar<=20]
length(data_solar_low)/length(data_solar)
data_solar_medium =data_solar[data_solar > 20 & data_solar < 40]
length(data_solar_medium)/length(data_solar)
data_solar_high= data_solar[data_solar >=40]
length(data_solar_high)/length(data_solar)


data_solar_2020=data$solprod[data$year=="2020"]
data_solar_low_2020 =data_solar_2020[data_solar_2020<=20]
length(data_solar_low_2020)/length(data_solar_2020)
data_solar_medium_2020 =data_solar_2020[data_solar_2020 > 20 & data_solar_2020 < 40]
length(data_solar_medium_2020)/length(data_solar_2020)
data_solar_high_2020= data_solar[data_solar_2020 >=40]
length(data_solar_high_2020)/length(data_solar_2020)



data_solar_2021=data$solprod[data$year=="2021"]
data_solar_low_2021 =data_solar_2021[data_solar_2021<=20]
length(data_solar_low_2021)/length(data_solar_2021)
data_solar_medium_2021 =data_solar_2021[data_solar_2021 > 20 & data_solar_2021 < 40]
length(data_solar_medium_2021)/length(data_solar_2021)
data_solar_high_2021= data_solar_2021[data_solar_2021 >=40]
length(data_solar_high_2021)/length(data_solar_2021)



data_solar_2022 = data$solprod[data$year == "2022"]
data_solar_low_2022 = data_solar_2022[data_solar_2022 <= 20]
length(data_solar_low_2022) / length(data_solar_2022)
data_solar_medium_2022 = data_solar_2022[data_solar_2022 > 20 & data_solar_2022 < 40]
length(data_solar_medium_2022) / length(data_solar_2022)
data_solar_high_2022 = data_solar_2022[data_solar_2022 >= 40]
length(data_solar_high_2022) / length(data_solar_2022)



temperature_2020 <- data$temp[data$year == "2020"]
plot(temperature_2020, main = "Temperature Brussels 2020", type = "l", xlab = "Time in days", ylab = "Temperature in degrees Celsius")
abline(h = mean(temperature_2020), lty = 1, col = "red")
abline(h = max(temperature_2020), lty = 1, col = "blue")
abline(h = min(temperature_2020), lty = 1, col = "green")
legend("topright", legend = c("mean", "max", "min"), fill = c("red", "blue","green"))


temperature_2021 <- data$temp[data$year == "2021"]
plot(temperature_2021, main = "Temperature Brussels 2021", type = "l", xlab = "Time in days", ylab = "Temperature in degrees Celsius")
abline(h = mean(temperature_2021), lty = 1, col = "red")
abline(h = max(temperature_2021), lty = 1, col = "blue")
abline(h = min(temperature_2021), lty = 1, col = "green")
legend("topright", legend = c("mean", "max", "min"), fill = c("red", "blue","green"))


temperature_2022 <- data$temp[data$year == "2022"]
plot(temperature_2022, main = "Temperature Brussels 2022", type = "l", xlab = "Time in days", ylab = "Temperature in degrees Celsius")
abline(h = mean(temperature_2022), lty = 1, col = "red")
abline(h = max(temperature_2022), lty = 1, col = "blue")
abline(h = min(temperature_2022), lty = 1, col = "green")
legend("topright", legend = c("mean", "max", "min"), fill = c("red", "blue","green"))

coldest=min(data$temp)
coldest
data[data$temp==min(data$temp),1]
data[data$date=="2021-02-09", 6]
highest_energy=max(data$consum)
highest_energy
data[max(data$consum),1]

