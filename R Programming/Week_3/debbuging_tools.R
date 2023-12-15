# Debugging Tools
setwd("/home/clive/Documents/R Data Science/Data Science Specialization/R Programming/Week_3/")
getwd()

# Diagnosing the Problem
# Something's Wrong
log(-1)
printmessage <- function(x) {
    if (x > 0) {
        print("x is greater than zero")
    } else {
        print("x is less than or equal to zero")
    }
    invisible(x)
}
printmessage(4)
printmessage(-5)
printmessage(NA)

printmessage2 <- function(x) {
    if (is.na(x)) {
        print("x is a missing value")
    } else if (x > 0) {
        print("x is greate than 0")
    } else {
        print("x is less than or equal to zero")
    }
    invisible(x)
}
printmessage2(2)
printmessage2(0)
printmessage2(-5)
printmessage2(NA)
printmessage2(NaN)
printmessage2(x)

# Debugging Tools in R

# traceback
mean(x)
traceback()
lm(y ~ x)
traceback()

# debug
debug(lm)
lm(y ~ x)

# recover
options(error = recover)
read.csv("nosuchfile")
