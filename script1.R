data1 = read.csv("/home/rishuu/sem5/DSc/final/DSc_foreign_trade.csv");
bop = unlist(data1[5,]/100000)
ser <- seq(2001, 2012, 1)
plot(ser, bop, xlab = "Year (2001 - 2012)", ylab = "Balance of Trade(lacs)", cex = 0.1)
lines(ser, bop)

imports = unlist(data1[1,])/100000
exports = unlist(data1[2,])/100000

plot(ser, imports, type = "l", col = "red" , xlab = "Year (2001 - 2012)", ylab = "import/export (lacs)", cex = 0.1)
legend(2001, 200, legend=c("imports", "exports"), col=c("red", "blue"), lty=1:2, cex=0.8)
lines(ser , exports, col="blue")

library(rjson)
data2 <- fromJSON(file = "/home/rishuu/sem5/DSc/final/data2.json")
# trade deficits.
ser <- seq(2000, 2013, 1)
plot(ser, data2$data[[26]][2:15] , xlab = "Year", ylab = "Trade deficit(US billion $)", type = "l", col = "green")

plot(ser, data2$data[[36]][2:15] , xlab = "Year", ylab = "Exchange rate average (Rupees)", type = "l", col = "purple")

#agri
data3 <- read.csv("/home/rishuu/sem5/DSc/final/agri.csv")
get <- seq(2, 11, 2)
ser <- seq(2007, 2011, 1)
exp = data3$data__011[get]
plot(ser, exp , xlab = "Year", ylab = "Total agricultural export", type = "l", col = "green")

#predictive model
pred_data <- read.csv('/home/rishuu/sem5/DSc/final/prediction_data.csv')
acf(pred_data)

