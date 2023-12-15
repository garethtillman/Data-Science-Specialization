getwd()
setwd("/home/clive/Documents/R Data Science/Data Science Specialization/R Programming/Week_1")

# Matrices
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
m <- matrix(1:6, ncol = 2, nrow = 3)
m <- 1:10
m
dim(m) <- c(2,5)
m
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

# Factors
x <- factor(c("yes","yes","yes","no","yes","no"))
x
table(x)
unclass(x)
attr(x, "levels")
x <- factor(c("yes","yes","no","yes","no"), levels = c("yes","no"))
x

# Missing Values
x <- c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x <- c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

# Data Frames
x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x

# Names
x <- 1:3
names(x)
names(x) <- c("foo","bar","norf")
names(x)
x <- list(a = 1, b = 2, c = 3)
x
m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m