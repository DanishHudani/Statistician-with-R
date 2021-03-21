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



