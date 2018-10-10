m = c(195, 178, 192, 183, 178, 193)
v = c(177, 178, 170, 171, 176)
x = c(m, v)
n = length(x)
n.m = length(m)
n.v = length(v)

plot(x, ylab = "lengte in cm", xlab = "personen")

# groeps gemiddelde

lines(c(1, n), c(mean(x),mean(x)), lwd = 5, lty= 2, col="red")

segments(1:n, mean(x), 1:n, x)

# gemiddelde voor de mannen
lines(c(1,n.m), c(mean(m),mean(m)), lwd=5, col="blue")

# gemiddelde voor de vrouwen
lines(c(n.m+1,n), c(mean(v),mean(v)), lwd=5, col="pink")

segments(1:n.m, mean(x), 1:n.m, mean(m), lwd = 3, col=rgb(0,0,1,alpha=0.4) )

segments((n.m+1):n, mean(x), (n.m+1):n, mean(v), lwd = 3, col=rgb(1,.75,.75, .4))


segments(1:n.m, mean(m), 1:n.m, m, lwd = 3, col="orange")

segments((n.m+1):n, mean(v), (n.m+1):n, v, lwd = 3, col="orange")

