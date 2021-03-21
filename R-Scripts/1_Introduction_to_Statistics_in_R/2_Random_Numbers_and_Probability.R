library(tidyverse)

amir_deals <- readRDS("datasets/seller_1.rds")

# Count the deals for each product
amir_deals %>% count(product)

# Calculate probability of picking a deal with each product
amir_deals %>%
  count(product) %>%
  mutate(prob = n/sum(n))

# Set random seed to 31
set.seed(31)

# Sample 5 deals without replacement
amir_deals %>%
  sample_n(5)

# Sample 5 deals with replacement
amir_deals %>%
  sample_n(5, replace = TRUE)


restaurant_groups <- data.frame(group_id = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"),
                                group_size = c(2, 4, 6, 2, 2, 2, 3, 2, 4, 2))

# Create a histogram of group_size
ggplot(restaurant_groups, aes(x = group_size)) +
  geom_histogram(bins = 5)

# Create probability distribution
size_distribution <- restaurant_groups %>%
  # Count number of each group size
  count(group_size) %>%
  # Calculate probability
  mutate(probability = n / sum(n))

size_distribution

expected_val <- sum(size_distribution$group_size * size_distribution$probability)
expected_val

# Calculate probability of picking group of 4 or more
size_distribution %>%
  # Filter for groups of 4 or larger
  filter(group_size >= 4) %>%
  # Calculate prob_4_or_more by taking sum of probabilities
  summarize(prob_4_or_more = sum(probability))


# Continous Uniform Distribution

# Min and max wait times for back-up that happens every 30 min
min <- 0
max <- 30

# Calculate probability of waiting less than 5 mins
prob_less_than_5 <- punif(5, min, max)
prob_less_than_5

# punif() function returns the probability of value from uniform distribution from lower tail giving min and 
# max range of distribution

# Calculate probability of waiting more than 5 mins
prob_greater_than_5 <- punif(5, min, max, lower.tail = FALSE)
prob_greater_than_5

# Calculate probability of waiting 10-20 mins
prob_between_10_and_20 <- punif(20, min, max) - punif(10, min, max)
prob_between_10_and_20

# There's a 33% chance that Amir will wait 10-20 minutes.


# Set random seed to 334
set.seed(334)

wait_times <- data.frame(simulation_nb = 1:1000)

# Generate 1000 wait times between 0 and 30 mins, save in time column
wait_times %>%
  mutate(time = runif(1000, min = 0, max = 30)) %>%
  # Create a histogram of simulated times
  ggplot(aes(time)) +
  geom_histogram(bins = 30)


#runif() takes number of time with min and max to generate numbers from uniform distribution

