# Load packages
library(rjags)
library(coda)

# Create jags data
jags_data <- list(mu = 10, sigma = 2)

# Compile model
model1b <- jags.model(file = "example_1b.jags",
                      data = jags_data)

# Generate samples
samples1b <- coda.samples(model1b, "y", n.iter = 10000)

# Compute summary statistics
summary(samples1b)

