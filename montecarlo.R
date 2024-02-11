#number of random points
num_points <- 100000

# Generate random points within the square [-1, 1] x [-1, 1]
x <- runif(num_points, min = -1, max = 1)
y <- runif(num_points, min = -1, max = 1)

distance <- sqrt(x^2 + y^2)

num_points_inside_circle <- sum(distance <= 1)

# Estimate the value of pi
estimated_pi <- 4 * num_points_inside_circle / num_points


print(estimated_pi)

