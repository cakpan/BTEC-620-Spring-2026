#Name: Courage Akpan Date:1/27/26 Purpose:Microarray Analysis

#Install Affymetrix library package

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("affy")

#Load the library Affy
library(affy)

#Set working directory to afolder where the CEL files are
setwd("/Users/confi/OneDrive - Claflin University/Documents/Bioinformatics")

#Read the four CEL files in R
data<-ReadAffy()

#Generate a boxplot to visualize dataset
boxplot(data)

#Normalize the data set to remove any outliers and stable the median for all.CEL files
normalizedata<-rma(data)

#Check the box plot to visulaize the normalized 
boxplot(exprs(normalizedata))
 
#Fold change analysis for comparing treatment vs control samples
#Lets assume GSM4843 CEL and GSM4844 CEL samples to be leukamea blood cancer 
and GSM4845 CEL and GSM4846 CEL to be normal blood samples






