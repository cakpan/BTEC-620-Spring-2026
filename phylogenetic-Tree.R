#Author:Courage, Date:03/26/26, Purpose:To generate a phylogenetic tree structure

#Load package ape
library(ape)

#Generate some dummy data for the tree structure 
text string<-text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"

vert.tree<-read.tree(text=text.string)

#Plot the tree struture
plot(vert.tree,no.margin=TRUE,edge.width=2)

#Writing/storing the tree structure dataset
setwd("/Users/confi/OneDrive - Claflin University/Documents/Bioinformatics/phylogenetic")
write.tree(vert.tree,file="dummy.tre")