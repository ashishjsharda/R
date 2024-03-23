if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("EBImage")

install.packages("abind")

# Load the EBImage library
library(EBImage)

image_url <- "https://www.petmd.com/sites/default/files/Acute-Dog-Diarrhea-47066074.jpg"

# Read the image
img <- readImage(image_url)

# Display the image
display(img, method="raster")
#display(img, method = "ImageJ")
#display(img, method = "cairo")
#display(img, method = "nogui")
