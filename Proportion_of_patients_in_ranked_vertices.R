#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
# Date: 2024.06.08
##############################################################
# Input: A data frame output from Update Retrieve_vertices_w_edge_connectivity.R.
# Object: Calculate the proportion of patient types associated with vertices possessing high and low connectivity.
##############################################################
# R functions

Ranked_vertices_associated_patients <- function(df) {
  count.top10.high.ART <- dim(dplyr::filter(df, rank == "top10", label == "high", patient == "ART"))[1]
  count.top10.high.EC <- dim(dplyr::filter(df, rank == "top10", label == "high", patient == "EC"))[1]
  count.top10.low.ART <- dim(dplyr::filter(df, rank == "top10", label =="low", patient == "ART"))[1]
  count.top10.low.EC <- dim(dplyr::filter(df, rank == "top10", label == "low", patient == "EC"))[1]
  
  count.top20.high.ART <- dim(dplyr::filter(df, rank == "top20", label == "high", patient == "ART"))[1]
  count.top20.high.EC <- dim(dplyr::filter(df, rank == "top20", label == "high", patient == "EC"))[1]
  count.top20.low.ART <- dim(dplyr::filter(df, rank == "top20", label == "low", patient == "ART"))[1]
  count.top20.low.EC <- dim(dplyr::filter(df, rank == "top20", label == "low", patient == "EC"))[1]
  
  count.top30.high.ART <- dim(dplyr::filter(df, rank == "top30", label == "high", patient == "ART"))[1]
  count.top30.high.EC <- dim(dplyr::filter(df, rank == "top30", label == "high", patient == "EC"))[1]
  count.top30.low.ART <- dim(dplyr::filter(df, rank == "top30", label == "low", patient == "ART"))[1]
  count.top30.low.EC <- dim(dplyr::filter(df, rank == "top30", label == "low", patient == "EC"))[1]
  
 count <- c(count.top10.high.ART/10, count.top10.high.EC/10, count.top10.low.ART/10, count.top10.low.EC/10, count.top20.high.ART/20, count.top20.high.EC/20, count.top20.low.ART/20, count.top20.low.EC/20, count.top30.high.ART/30, count.top30.high.EC/30, count.top30.low.ART/30, count.top30.low.EC/30)
 
 top <- c(rep("top10", 4), rep("top20", 4), rep("top30", 4))
 
 label <- rep(c(rep("high", 2), rep("low", 2)),3)
 
 patient <- rep(c("ART", "EC"), 6)
 
 df_wszystko <- data.frame(count, top, label, patient)
 
 return(df_wszystko)
}
