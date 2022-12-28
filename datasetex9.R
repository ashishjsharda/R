data("iris")
iris_species <- split(iris, iris$Species) 
iris_species
#print the type
typeof(iris_species)
#print the class
class(iris_species[[1]]) 
#print the head
head(iris_species[[2]])

iris_setosa_species <- iris_species[[1]] 
iris_setosa_species
iris_versicolor_species <- iris_species[[2]]
iris_versicolor_species
iris_virginica_species <- iris_species[[3]]
iris_virginica_species

iris_back <- unsplit(iris_species, iris$Species) 
library(dplyr) 
all_equal(iris, iris_back)
