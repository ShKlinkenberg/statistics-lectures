# https://derekogle.com/NCMTH207/resources/digitizing

install.packages("digitize")
library("digitize")

dat <- digitize("topics/test_utility/scatterplot.png")

save(dat, file="topics/test_utility/data.Rdata")

plot(dat)