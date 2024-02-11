# Set the number of trials
n <- 10

# Set the probability of success (p)
p <- 0.3

# Generate 10 random numbers from a Bernoulli distribution with probability of success p
random_numbers <- rbinom(n, 1, p)

print(random_numbers)
