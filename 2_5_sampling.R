

#######################################################################

bt<- seq(30, 33, 0.01)

#y <- dnorm(bt, 90, 10)
#plot(bt, y, type="l", xlim=c(-50, 120), main="transformera så µ blir noll")
#lines(bt -90, y, xlim=c(-50, 120), col="blue")

# subtrahera medelvärdet från varje värde på blodtrycket
# Givet: X ~N(90, 10)
# Dividera varje blodtryck med standardavvikelsen

y <- dnorm(bt, 31.2, 0.4)
plot(bt, y, type="l", xlim=c(-40, 40), xlab = " ", main="x visar standardavvikelse")
lines((bt - 31.2)/0.1, y, xlim=c(-50, 50), col="blue")

#######################################################################

# skapa polygon med färgning och text

lb <- 31.38 # undre gräns
ub <- max(bt)   # övre gräns

x2 <- seq(lb, ub, length = 100) # nytt set med koordinater för polygonen
y <- dnorm((x2 - 31.2)/0.1, 0, 1) # densitet

polygon(c(lb, x2, ub), c(0, y, 0), col = 'skyblue')

text(10, 0.005, paste("blå area = ", (round(pnorm(31.38, 31.2, 0.4),4))))