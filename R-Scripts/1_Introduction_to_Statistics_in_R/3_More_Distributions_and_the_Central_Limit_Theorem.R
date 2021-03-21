
# The Normal Distribution

# Histogram of amount with 10 bins
ggplot(amir_deals, aes(x = amount)) + geom_histogram(bins = 10)


# Probability of deal < 7500
pnorm(7500, mean(amir_deals$amount), sd(amir_deals$amount))

# Probability of deal < 1000
pnorm(1000, mean(amir_deals$amount), sd(amir_deals$amount))


# Probability of deal between 3000 and 7000
pnorm(7000, mean(amir_deals$amount), sd(amir_deals$amount)) - pnorm(3000, mean(amir_deals$amount), sd(amir_deals$amount))

# Calculate amount that 75% of deals will be more than
qnorm(0.25, mean(amir_deals$amount), sd(amir_deals$amount))



# Calculate new average amount
new_mean <- 5000 + (5000 * 0.2)
new_mean

# Calculate new standard deviation
new_sd <- 2000 + (2000 * 0.3)
new_sd

new_sales <- data.frame(sales_num = 1:36)

# Simulate 36 sales
new_sales <- new_sales %>% mutate(amount = rnorm(36, new_mean, new_sd))

# Create histogram with 10 bins
ggplot(new_sales, aes(x = amount)) + geom_histogram(bins = 10)
















