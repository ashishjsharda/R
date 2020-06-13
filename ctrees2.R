library(party)
print(head(readingSkills))
input.dat<-readingSkills[c(1:105),]
print(input.dat)
plot(file="decisiontree.png")
#Create the tree
output.tree<-ctree(nativeSpeaker ~age+shoeSize+score,data = input.dat)
plot(output.tree)
dev.off()
