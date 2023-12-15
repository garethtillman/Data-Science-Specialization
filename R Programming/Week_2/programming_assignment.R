# Programming Assignment
setwd("/home/clive/Documents/R Data Science/Data Science Specialization/R Programming/Week_2/")
getwd()
unzip("rprog_data_specdata.zip")
list.files("specdata/")


pollutantmean <- function(directory, pollutant, id = 1:332) {
    data <- data.frame()
    files_full <- list.files(directory, full.names = TRUE)
    for (i in id) {
        data <- rbind(data, read.csv(files_full[i]))
    }
    mean(data[, pollutant], na.rm = TRUE)
}

mean_nitrate <- pollutantmean("specdata", "nitrate")
mean_nitrate
mean_sulfate <- pollutantmean("specdata", "sulfate")
mean_sulfate

complete <- function(directory, id = 1:332) {
    data <- data.frame()
    files_full <- list.files(directory, full.names = TRUE)
    for (i in id) {
        dat <- read.csv(files_full[i])
        dat <- na.omit(dat)
        data <- rbind(data, data.frame("id" = 1, nobs = nrow(dat)))
    }
    data
}

complete_obs <- complete("specdata")
head(complete_obs, 10)

corr <- function(directory, threshold=0) {
    cor_values <- c()
    full_files <- list.files(directory, full.names = TRUE)
    for (i in 1:length(full_files)) {
        data <- read.csv(full_files[i])
        data <- na.omit(data)
        if (nrow(data) >= threshold) {
            cor_values <- append(cor_values, cor(data$nitrate, data$sulfate))
        }
    }
    cor_values
}

test1 <- corr("specdata", 150)
test1 <- na.omit(test1)
head(test1)
summary(test1)

test2 <- corr("specdata", 400)
head(test2)
summary(test2)

test3 <- corr("specdata", 5000)
head(test3)
summary(test3)

test4 <- corr("specdata")
test4 <- na.omit(test4)
head(test4)
length(test4)

# Qustion 1
pollutantmean("specdata", "sulfate", 1:10)

# Question 2
pollutantmean("specdata", "nitrate", 70:72)

# Question 3
pollutantmean("specdata", "sulfate", 34)

# Question 4
pollutantmean("specdata", "nitrate")

# Question 5
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

# Question 6
cc <- complete("specdata", 54)
print(cc$nobs)

# Question 7
RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

# Question 8
cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

# Question 9
cr <- corr("specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

# Question 10
cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))