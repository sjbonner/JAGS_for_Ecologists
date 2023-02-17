# Load packages
library(rjags)
library(coda)

# Compile model
model1 <- jags.model("example_1.jags")

# Generate samples
samples1 <- coda.samples(model1, "y", n.iter = 10000)

# Compute summary statistics
summary(samples1)

