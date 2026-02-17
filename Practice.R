#Name: Courage Akpan Date:1/27/26 Purpose:Microarray Analysis Assignmemnt

#Load the library Affy
library(affy)

#Set working directory to afolder where the CEL files are
setwd("/Users/confi/OneDrive - Claflin University/Documents/Bioinformatics/assignmentdata")

#Read the four CEL files in R
data<-ReadAffy()

#Generate a boxplot to visualize dataset
boxplot(data)

#Normalize the data set to remove any outliers and stable the median for all.CEL files
normalizedata<-rma(data)

#Check the box plot to visulaize the normalized 
boxplot(exprs(normalizedata))
 
#Fold change analysis for comparing treatment vs control samples
#Lets assume GSM4844 CEL and GSM4845 CEL samples to be leukamea blood cancer 
and GSM4846 CEL and GSM4847 CEL to be normal blood samples

#Take means/average on each row
Newdata<-exprs(normalizedata)
Treatment<-Newdata[,c(1,2)]
Control<-Newdata[,c(3,4)]

head(Treatment)
head(Control)
head()
#Apply the rowmeans function to calculate averages
Treatmentaverage<-rowMeans(Treatment)
Controlaverage<-rowMeans(Control)

head(Treatmentaverage)
head(Controlaverage)

#Apply fold change by substraction
foldchange<-Treatmentaverage-Controlaverage
head(foldchange)

#If the gene for fold change value is its >2 is an uprugulated gene, and if its < -2
its downrugulated gene, and if genes are between -2 and +2 they are significant genes.

#Export variable foldchange in an CSV file
write.csv(foldchange,"foldchange.csv")
