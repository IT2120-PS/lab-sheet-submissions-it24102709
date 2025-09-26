getwd()
setwd("C:\\Users\\User\\Desktop\\lab8")
data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

#EXERCISE
#Q1
# Import data
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# Extract weights
weights <- data$Weight.kg.

# Population mean
pop_mean <- mean(weights)

# Population standard deviation
pop_sd <- sd(weights) * sqrt((length(weights)-1)/length(weights))  # correct to population SD

pop_mean
pop_sd

#q2
set.seed(123)  # for reproducibility

sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  samp <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i] <- sd(samp)
}

sample_means
sample_sds

#q3
# Mean of the sample means
mean_of_sample_means <- mean(sample_means)

# SD of the sample means
sd_of_sample_means <- sd(sample_means)

mean_of_sample_means
sd_of_sample_means

