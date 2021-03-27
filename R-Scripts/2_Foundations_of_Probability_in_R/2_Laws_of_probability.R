
# For A and B
# Simulate 100,000 flips of a coin with a 40% chance of heads
A <- rbinom(100000, 1, 0.4)

# Simulate 100,000 flips of a coin with a 20% chance of heads
B <- rbinom(100000, 1, 0.2)

# Estimate the probability both A and B are heads
mean(A & B)

# Check
0.4 * 0.2


# You've already simulated 100,000 flips of coins A and B
A <- rbinom(100000, 1, .4)
B <- rbinom(100000, 1, .2)

# Simulate 100,000 flips of coin C (70% chance of heads)
C <- rbinom(100000, 1, .7)

# Estimate the probability A, B, and C are all heads
mean(A & B & C)

# Check
0.4 * 0.2 * 0.7


# For A or B
# Simulate 100,000 flips of a coin with a 60% chance of heads
A <- rbinom(100000, 1, .60)

# Simulate 100,000 flips of a coin with a 10% chance of heads
B <- rbinom(100000, 1, .10)

# Estimate the probability either A or B is heads
mean(A | B)

# Check
0.60 + 0.10 - (.60 * .10)


# Use rbinom to simulate 100,000 draws from each of X and Y
X <- rbinom(100000, 10, .60)
Y <- rbinom(100000, 10, .70)

# Estimate the probability either X or Y is <= to 4
mean(X <= 4 | Y <= 4)

# Use pbinom to calculate the probabilities separately
prob_X_less <- pbinom(4, 10, .60)
prob_Y_less <- pbinom(4, 10, .70)

# Combine these to calculate the exact probability either <= 4
prob_X_less + prob_Y_less - (prob_X_less * prob_Y_less)


# Simulate 100,000 draws of a binomial with size 20 and p = .1
X <- rbinom(100000, 20, .1)

# Estimate the expected value of X
mean(X)

# Estimate the expected value of 5 * X
mean(X * 5)


# X is simulated from 100,000 draws of a binomial with size 20 and p = .1
X <- rbinom(100000, 20, .1)

# Estimate the variance of X
var(X)

# Estimate the variance of 5 * X
var(5 * X)

(5 ** 2) * var(X)

# Simulate 100,000 draws of X (size 20, p = .3) and Y (size 40, p = .1)
X <- rbinom(100000, 20, 0.3)
Y <- rbinom(100000, 40, 0.1)

# Estimate the expected value of X + Y
mean(X) + mean(Y)

# Simulation from last exercise of 100,000 draws from X and Y
X <- rbinom(100000, 20, .3) 
Y <- rbinom(100000, 40, .1)

# Find the variance of X + Y
var(X + Y)

# Find the variance of 3 * X + Y
var(3 * X + Y)

# Above laws work only if X and Y are independent varaibles



















