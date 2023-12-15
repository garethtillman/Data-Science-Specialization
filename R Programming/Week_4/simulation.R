# Week 4
setwd("/home/clive/Documents/R Data Science/Data Science Specialization/R Programming/Week_4/")
getwd()

# Simulation
# Generating Random Numbers
x <- rnorm(10)
x
x <- rnorm(10,20,2)
x
summary(x)

set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)

rpois(10, 1)
rpois(10, 2)
rpois(10, 20)

ppois(2, 2)
ppois(4, 2)
ppois(6, 2)

# Simulating a Linear Model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

# What if x is binary?
set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

# Generating Random Variables From a
# Generalized Random Model
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x, y)

# Random Sampling
set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(1:10)
sample(1:10)
sample(1:10, replace = TRUE)
