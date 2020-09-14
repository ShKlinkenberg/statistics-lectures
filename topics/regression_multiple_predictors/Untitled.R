bio <- read.csv("https://uva.sowiso.nl/images/uploads/exercises/15781/bioStabiel.csv", header = TRUE)

bio

names(bio)

bio <- bio[complete.cases(bio),]

fit <- lm(gezond ~ age + sport + voeding, data = bio, na.action = na.exclude)
fit

summary(fit)
plot(fit)

fit.2 <- lm(gezond ~ age + sport + voeding + biost , data = bio, na.action = na.exclude)
fit.2
summary(fit.2)

anova(fit, fit.2)

plot(bio)
cor(bio)
