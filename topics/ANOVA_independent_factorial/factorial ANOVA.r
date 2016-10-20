rm(list=ls())

setwd("~/Dropbox/UvA/Onderwijs/WSR/Lectures/Sharon/lecture ANOVA independent factorial")

data <- read.csv("anova_alcohol_speed_sekse.csv")

brokken <- data$brokken
n       = length(brokken)

# pdf("factorial ANOVA.pdf", width=9, height=5)

# Plot all data points
plot(brokken,
     xlab = 'participants',
     main = 'speed + alcohol + speed * alcohol')

# With the mean
lines(1:n,rep(mean(brokken),n),col='black',lwd=2)

# The black lines are the total variance, the deviation from the mean.
segments(1:n, mean(brokken), 1:n, brokken)

# Calculate expected brokken
fit <- lm(brokken ~ speed + alcohol + speed * alcohol, data)
exp.brokken <- fit$fitted.values

# The model predicts the brokken scores
points(1:n,exp.brokken, col='purple')

SS.model <- sum((exp.brokken - mean(data$brokken))^2)
SS.model

# Now we can add the error of this model
segments(1:n, brokken, 1:n, exp.brokken, col='purple')

SS.error <- sum((brokken - exp.brokken)^2)
SS.error

# Descriptives for model
means.model <- aggregate(brokken ~ speed + alcohol + speed * alcohol, data, mean  )
n.k.model   <- aggregate(brokken ~ speed + alcohol + speed * alcohol, data, length)
means.model
n.k.model

# Descriptives for speed
means.speed <- aggregate(brokken ~ speed, data, mean  )
n.k.speed   <- aggregate(brokken ~ speed, data, length)
names(means.speed)[2] <- "means.speed"
means.speed

# Descriptives for alcohol
means.alcohol <- aggregate(brokken ~ alcohol, data, mean)
n.k.alcohol   <- aggregate(brokken ~ alcohol, data, length)
names(means.alcohol)[2] <- "means.alcohol"
means.alcohol

data <- merge(data,means.speed,  by="speed",  all.x=TRUE)
data <- merge(data,means.alcohol,by="alcohol",all.x=TRUE)
data <- data[order(data$pp),]

data$mean.total <- mean(data$brokken)

# Deviation of alcohol
points(1:n, data$means.alcohol,col='orange',type="p")
segments(1:n, mean(brokken), 1:n, data$means.alcohol, col='orange')

SS.alcohol <- sum(with(data, (means.alcohol - mean.total)^2))
SS.alcohol

# Deviation of speed
points(1:n, data$means.speed,  col='green')
segments(1:n, mean(brokken), 1:n, data$means.speed, col='green')

SS.speed <- sum(with(data, (means.speed   - mean.total)^2))
SS.speed

# Sums of squares for the interaction between speed and alcohol

SS.speed.alcohol <- SS.model - SS.speed - SS.alcohol
SS.speed.alcohol

# Add legend to plot
legend("topleft",
       pch    = c("o","o","o"),
       col    = c("orange","green",'purple'),
       legend = c("speed","alcohol","speed * alcohol") )

#dev.off()