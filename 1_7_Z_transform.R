bt<- seq(-50, 120, 1)

#y <- dnorm(bt, 90, 10)
#plot(bt, y, type="l", xlim=c(-50, 120), main="transformera s� � blir noll")
#lines(bt -90, y, xlim=c(-50, 120), col="blue")

# subtrahera medelv�rdet fr�n varje v�rde p� blodtrycket
# Givet: X ~N(90, 10)
# Dividera varje blodtryck med standardavvikelsen

y <- dnorm(bt, 90, 10)
plot(bt, y, type="l", xlim=c(-4, 4), xlab = " ", main="x visar standardavvikelse")
lines((bt - 90)/10, y, xlim=c(-5, 5), col="blue")