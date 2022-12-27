data("iris")
iris_species <- split(iris, iris$Species) 
iris_species
#print the type
typeof(iris_species)
#print the class
class(iris_species[[1]]) 
#print the head
head(iris_species[[2]])
