# Reading Data
getwd()
setwd("/home/clive/Documents/R Data Science/Data Science Specialization/R Programming/Week_1")

# Reading Tabular Data
data1 <- read.table("AOSI_small.csv", sep = ",", header = TRUE)
data1
data2 <- read.csv("titanic.csv")
data2

# Reading Larger Datasets with read.table
data3 <- read.table("titanic.csv", sep = ",", nrows = 430, header = T)
classes <- sapply(data3, class)
tabAll = read.table("titanic.csv", sep = ",", colClasses = classes, header = T)
tabAll

# Textual Format
y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

# Dumping R Objects
x <- "foo"
y <- data.frame(a = 1, b= "a")
dump(c("x","y"), file = "data.R")
rm("x","y")
source("data.R")
y
x