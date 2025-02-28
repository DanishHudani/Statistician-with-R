
# Generate 10 separate random flips with probability .3
rbinom(10, 1, 0.3)

# Generate 100 occurrences of flipping 10 coins, each with 30% probability
rbinom(100, 10, 0.3)

# What kind of values do you see? (Ans: 1,2,3)
hist(rbinom(100, 10, 0.3))

# Calculate the probability that 2 are heads using dbinom
dbinom(2, 10, 0.3)

# Confirm your answer with a simulation using rbinom
mean(rbinom(10000, 10, 0.3) == 2)

# Calculate the probability that at least five coins are heads
1 - pbinom(4, 10, .3)
#pbinom(5, 10, .3, lower.tail = FALSE) -> Also works

# Confirm your answer with a simulation of 10,000 trials
mean(rbinom(10000, 10, .3) >= 5)


# Here is how you computed the answer in the last problem
1 - pbinom(4, 10, .3)
mean(rbinom(10000, 10, .3) >= 5)

# Try now with 100, 1000, 10,000, and 100,000 trials
mean(rbinom(100, 10, .3) >= 5)
mean(rbinom(1000, 10, .3) >= 5)
mean(rbinom(10000, 10, .3) >= 5)
mean(rbinom(100000, 10, .3) >= 5)


# Calculate the expected value using the exact formula n * p
25 * .3

# Confirm with a simulation using rbinom
mean(rbinom(10000, 25, .3))


# Calculate the variance using the exact formula
25 * .3 * (1 - .3)

# Confirm with a simulation using rbinom
var(rbinom(10000, 25, .3))

