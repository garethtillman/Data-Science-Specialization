# Practice Assignment

# Downloading and Data Input
getwd()
setwd("~/Documents/R Data Science/Data Science Specialization/R Programming/Week_2/practice_assignment")
dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir="diet_data")
list.files("diet_data")
andy <- read.csv("diet_data/Andy.csv")

# Finding Basic Information About Dataset

head(andy)
length(andy$Day)
dim(andy)
str(andy)
summary(andy)
names(andy)
andy[1, "Weight"]
andy[30, "Weight"]
andy[which(andy$Day == 30), "Weight"]
subset(andy$Weight, andy$Day == 30)

andy_start <- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]
andy_loss <- andy_start - andy_end
andy_loss

files <- list.files("diet_data")
files
files[1]
files[2]
files[3:5]

head(read.csv(files[3]))
files_full <- list.files("diet_data", full.names = TRUE)
files_full
head(read.csv(files_full[3]))
andy_david <- rbind(andy, read.csv(files_full[2]))
head(andy_david)
tail((andy_david))
day_25 <- andy_david[which(andy_david$Day == 25), ]
day_25

for (i in 1:5) {print(i)}
dat <- data.frame()
for (i in 1:length(files_full)) {
  dat <- rbind(dat, read.csv(files_full[i]))
}
str(dat)
median(dat$Weight)
median(dat$Weight, na.rm = TRUE)
dat_30 <- dat[which(dat$Day == 30), ]
dat_30
median(dat_30$Weight)

# Functions
