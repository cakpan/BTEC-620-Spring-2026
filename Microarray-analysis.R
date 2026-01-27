#Name: Courage Akpan Date:1/27/26 Purpose:Microarray Analysis

#Install Affymetrix library package

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("affy")

#Set working directory
setwd("/Users/confi/OneDrive - Claflin University/Documents/Bioinformatics")



