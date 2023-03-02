## Set seed so values can be reproduced
set.seed(7)

## Set parameters
K <- 5 ## Number of occasions
N <- 123 ## Number of individuals
p <- rbeta(K,6,9)

## Simulate full data
caps <- sapply(1:K, function(k) rbinom(N, 1, p[k]))

## Extract observed data
obs <- caps[which(apply(caps,1,sum) > 0),]

## Save observed data
write_rds(obs,"example_6_data.rds")

