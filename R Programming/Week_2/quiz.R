# Module 2 Quiz

getwd()
setwd("/home/clive/Documents/R Data Science/Data Science Specialization/R Programming/Week_2")

# question 1
cube <- function(x, n) {
    x^3
}
cube(3)

# question 2
x <- 1:10
if (x > 5) {
    x <- 0
}

# Question 3
f <- function(x) {
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}
z <- 4
f(3)

# Question 4
x <- 5
y <- if(x < 3) {
        NA
} else {
         10
}
y

# Question 5
h <- function(x, y = NULL, d = 3L) {
    z <- cbind(x, d)
    if(!is.null(y))
        z <- z + y
    else
        z <- z + f
    g <- x + y / z
    if(d == 3L)
        return(g)
    g <- g + 10
    g
}