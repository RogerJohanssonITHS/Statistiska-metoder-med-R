bt<- seq(-50, 120, 1)

#y <- dnorm(bt, 90, 10)
#plot(bt, y, type="l", xlim=c(-50, 120), main="transformera så µ blir noll")
#lines(bt -90, y, xlim=c(-50, 120), col="blue")

# subtrahera medelvärdet från varje värde på blodtrycket
# Givet: X ~N(90, 10)
# Dividera varje blodtryck med standardavvikelsen

y <- dnorm(bt, 90, 10)
plot(bt, y, type="l", xlim=c(-4, 4), xlab = " ", main="x visar standardavvikelse")
lines((bt - 90)/10, y, xlim=c(-5, 5), col="blue")