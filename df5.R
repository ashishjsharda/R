# Create a data frame with three columns
df <- data.frame(name=c("Alice", "Bob", "Charlie"), age=c(25, 30, 35), married=c(TRUE, FALSE, TRUE))

# Access elements of the data frame
df[1,] # Returns the first row of the data frame
df$name # Returns the name column of the data frame
