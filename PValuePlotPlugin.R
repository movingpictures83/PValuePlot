## ----setup_knitr, include=FALSE, cache=FALSE-------------------------------
library(knitr)
library(DRIMSeq)
opts_chunk$set(cache = FALSE, warning = FALSE, out.width = "7cm", fig.width = 7, out.height = "7cm", fig.height = 7)
library(PasillaTranscriptExpr)
library(ggplot2)

input <- function(inputfile) {
	myD <<- readRDS(inputfile) 
}

run <- function() {}

output <- function(outputfile) {
pdf(outputfile)
plotPValues(myD)
plotPValues(myD, level = "feature")
}

