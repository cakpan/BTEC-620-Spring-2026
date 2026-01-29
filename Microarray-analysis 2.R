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