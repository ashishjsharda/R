library(grDevices)

# Define the size of the display
width <- 10
height <- 10

# Create a blank plot with specified dimensions
plot(1, type="n", xlim=c(1, width), ylim=c(1, height), xlab="", ylab="", xaxt='n', yaxt='n')

setPixel <- function(x, y, col) {
  points(x, y, pch=15, col=col, cex=2)
}

setPixel(5, 5, "red")
