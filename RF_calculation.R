#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
# Date: 2023.10.09
##############################################################
# Input: Readout file from MSigDb over-representation analysis
# Object: Calculation of rich factor (RF)
##############################################################
# R packages

require(dplyr)

##############################################################
# R functions

RF_calculation <- function(df) {
  df$GeneRatio <- as.numeric( gsub("(\\d+)/(\\d+)", "\\1", df$GeneRatio, perl=T) ) / as.numeric(gsub("(\\d+)/(\\d+)", "\\2", df$GeneRatio, perl=T))
  df$BgRatio <- as.numeric( gsub("(\\d+)/(\\d+)", "\\1", df$BgRatio, perl=T) ) / as.numeric(gsub("(\\d+)/(\\d+)", "\\2", df$BgRatio, perl=T))
df_ <- df %>% dplyr::mutate(RF = GeneRatio/BgRatio) 

return(df_)
}
##############################################################
