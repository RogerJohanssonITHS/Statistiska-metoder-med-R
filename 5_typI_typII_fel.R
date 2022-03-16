x=seq(50,140,length=200)
y1=dnorm(x,80, 10)
plot(x,y1,type='l',lwd=2,col='red')
y2=dnorm(x,110, 10)
lines(x,y2,type='l',lwd=2,col='blue')
cord.x1 <- c((round(qnorm(0.975, 80, 10))),seq((round(qnorm(0.975, 80, 10))), 120,1),120) 
cord.y1 <- c(0,dnorm(seq((round(qnorm(0.975, 80, 10))), 120, 1), 80, 10),0) 
polygon(cord.x1,cord.y1,col='red')

abline(v=qnorm(0.975, 80, 10), lty=4)

text(120, 0.01, "< - Förkasta nollhypotesen här")

############################################
# skapa polygon med färgning och text

lb <- min(x) # undre gräns
ub <- qnorm(0.025, 80, 10)   # övre gräns

x2 <- seq(min(x), ub, length = 100) # nytt set med koordinater för polygonen
y <- dnorm(x2, 80, 10) # densitet

polygon(c(lb, x2, ub), c(0, y, 0), col = 'red')

abline(v=qnorm(0.025, 80, 10), lty=4)
text(80, 0.005, "< - Förkasta nollhypotesen här")