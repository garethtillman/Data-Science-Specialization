# Control Structures
setwd("~/Documents/R Data Science/Data Science Specialization/R Programming/Week_2/")
getwd()
# if-else
x <- 23

if (x > 3) {
  y <- 10
} else {
  y <- 0
}
y

x <- 12

if (x > 10) {
  y <- 10
} else if (x > 5) {
  y <- 3
} else {
  y <- 0
}
y

# for Loops
for (i in 1:4) {
  print(i)
}

x <- c("a","b","c","d")
for (i in 1:length(x)) {
  print(x[i])
}
for (i in seq_along(x)) {
  print(x[i])
}
for (letter in x) {
  print(letter)
}
for (i in 1:length(x)) print(x[i])

# Nested for Loops
x <- matrix(1:6, 2, 3)

for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

for (i in 1:nrow(x)) {
  for (j in 1:ncol(x)) {
    print(x[i,j])
  }
}

# while Loops
count <- 0
while (count < 5) {
  print(count)
  count <- count + 1
}

z <- 5

while (z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if (coin == 1) {
    z <- z + 1
  } else {
    z <- z - 1
  }
}

# repeat, break
x0 <- 1
to1 <- 1e-8

repeat {
  x1 <- computeEstimate()
  
  if (abs(x1 - x0) > to1) {
    break
  } else {
    x0 <- x1
  }
}

# next, return
for (i in 1:10) {
  if (i <= 5) {
    ## Skip the first 20 iterations
    next
  }
  print(i)
}
