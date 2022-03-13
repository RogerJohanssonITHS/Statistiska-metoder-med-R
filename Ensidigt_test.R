# skapa diagrammets x koordinater
bt <- seq(-3, 3, length = 100) * 10 + 90

plot(bt, dnorm(bt, 90, 10), type = "l", lwd = 2, col = "blue", xlab = "bt", main = "Ensidigt test") +
+ abline(v = 72)

# skapa polygon med färgning och text

lb <- min(bt) # undre gräns
ub <- 72   # övre gräns

x2 <- seq(min(x), ub, length = 100) # nytt set med koordinater för polygonen
y <- dnorm(x2, 90, 10) # densitet

polygon(c(lb, x2, ub), c(0, y, 0), col = 'skyblue')

text(70, 0.005, paste("blå area = ", (round(pnorm(72, 90, 10),4))))
