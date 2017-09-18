# Binomial distributions

n = 10   # Sample size
k = 0:10 # Discrete probability space
prob = seq(0.1,.9,.1)  # Probability of head
prob = c(prob, rev(seq(.2,.8,.1)))



png(file="topics/binomial_distribution/images/binomial%02d.png", width=500, height=300)

for(p in prob) {
  permutations = factorial(n) / ( factorial(k) * factorial(n-k) )
  
  p_k2  = p^k  * (1-p)^(n-k)  # Probability of single event
  p_kp2 = p_k2 * permutations # Probability of event times 
  # the occurrence of that event
  
  # title = expression(paste('Binomial distribution ', theta, ' = ', p))
  
  title = bquote('Binomial distribution' ~ theta ~ '=' ~ .(p))
  
  col=c(rep("red",2),rep("beige",7),rep("red",2))
  
  barplot( p_kp2, 
           main=title, 
           names.arg=0:10, 
           xlab="number of head", 
           ylab="P(%)", 
           beside=TRUE,
           col="beige",
           ylim=c(0,.45) 
  )
  
  text(.6:10.6*1.2,p_kp2,round(p_kp2,3),pos=3,cex=.5)

}

dev.off()