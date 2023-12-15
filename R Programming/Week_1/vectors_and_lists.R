getwd()
setwd("/home/clive/Documents/R Data Science/Data Science Specialization/R Programming/Week_1")

# Entering Input
x <- 1
print(x)
x
msg <- "Hello"
print(msg)
x <- 5
x
print(x)
x <- 1:20
x

# R Data Types
# Vectors and Lists
x <- c(0.5, 0.6)
print(x)
x <- c(TRUE, TRUE, FALSE)
print(x)
x <- c("a","b","c")
print(x)
x <- vector("numeric", length = 10)
print(x)

# Mixing Objects
y <- c(1.7, "a")
print(y)
y <- c(TRUE, 2)
print(y)
y <- c("a", TRUE)
print(y)

# Explicit Coercion
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.logical(x)
as.character(x)
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)

# Lists
x <- list(1, "a", TRUE, 1 + 4i)
x
