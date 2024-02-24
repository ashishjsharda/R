library(vcd)
# sample data
students <- data.frame(
  Gender = rep(c("Male", "Female"), each = 33), # Corrected to each = 33
  Subject = rep(c("Math", "Science", "Art"), length.out = 66) # Using length.out instead of each
)

# Create a mosaic plot
mosaicplot(table(students$Gender, students$Subject),
           main = "Preferred Subjects by Gender",
           color = c("blue", "red"), # Specify colors for genders
           xlab = "Subject",
           ylab = "Gender")
