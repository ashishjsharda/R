library(forecast)
data(AirPassengers)
plot(AirPassengers)
AirPassengers_decomposed <- decompose(AirPassengers)
plot(AirPassengers_decomposed)

