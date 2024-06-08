#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
##############################################################
# Input: (1) df_rank: a data frame containing vertices ID coupled with edge connectivity (data frame output from Calculate_connectedness.R); (2) df_ref: a feature dataframe containing all vertice coupled with features in a network.   
# Object: A data frame containing the top 10, 20, and 30 ranked vertices with the highest and lowest edge connectivity.
##############################################################

# R functions

Rank_vertex_selection <- function(df_rank, df_ref) {
  names(df_rank) <- c("ID", "sum")
  df_rank <- dplyr::arrange(df_rank, desc(sum))
  df_rank_high10 <- df_rank[1:10,] %>% dplyr::mutate(rank = "top10", label = "high")
  df_rank_low10 <- tail(df_rank, n = 10) %>% dplyr::mutate(rank = "top10", label = "low")
  
  df_rank_high20 <- df_rank[1:20,] %>% dplyr::mutate(rank = "top20", label = "high")
  df_rank_low20 <- tail(df_rank, n = 20) %>% dplyr::mutate(rank = "top20", label = "low")
  
  df_rank_high30 <- df_rank[1:30,] %>% dplyr::mutate(rank = "top30", label = "high")
  df_rank_low30 <- tail(df_rank, n = 30) %>% dplyr::mutate(rank = "top30", label = "low")
  
  df_ref$ID <- c(1:309)
  df_rank_high10_m <- dplyr::inner_join(df_ref, df_rank_high10, by = "ID")
  df_rank_low10_m <- dplyr::inner_join(df_ref, df_rank_low10, by = "ID")
  
  df_rank_high20_m <- dplyr::inner_join(df_ref, df_rank_high20, by = "ID")
  df_rank_low20_m <- dplyr::inner_join(df_ref, df_rank_low20, by = "ID")
  
  df_rank_high30_m <- dplyr::inner_join(df_ref, df_rank_high30, by = "ID")
  df_rank_low30_m <- dplyr::inner_join(df_ref, df_rank_low30, by = "ID")
  
  df_wszystko <- dplyr::bind_rows(df_rank_high10_m, df_rank_low10_m, df_rank_high20_m, df_rank_low20_m, df_rank_high30_m, df_rank_low30_m)
  
  return(df_wszystko)
}

