## 3d plot package rgl
## install.packages('rgl')
library(rgl)
attach(data)

plot3d(predictor, moderator, outcome, 
       #col  = rainbow(100), 
       col  = "red",
       size = 8)

quantiles <- as.vector(quantile(moderator,seq(.1,.9,.1)))
sds       <- c(mean(moderator)+(sd(moderator)*c(-1,0,1)))  
planes3d(a = 0, 
         b = 1, 
         c = 0,
         d = -sds,
         #d = -quantiles,
         alpha=0.7,
         color = c("blue"))

#fit2 <- lm(outcome ~ predictor + moderator)
fit <- lm(outcome ~ predictor + moderator + predictor*moderator)
summary(fit)

regeq <- function(model, predictor, moderator) { 
  fit$coefficients[1] + 
    fit$coefficients[2]*predictor + 
    fit$coefficients[3]*moderator + 
    fit$coefficients[4]*predictor*moderator
}

x.pre <- seq(10,21,length.out=30)
y.mod <- seq( 0,16,length.out=30)

z.pre <- outer(x.pre, y.mod, FUN='regeq', model=fit)

## Add 3D regression plane to scatter plot 
surface3d(x.pre,y.mod,z.pre, color = c("green"))


