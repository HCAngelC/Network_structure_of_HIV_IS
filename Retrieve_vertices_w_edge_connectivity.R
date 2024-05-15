#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
##############################################################
# Input: A correlation data frame containing every pair of adjacent signatures.
# Object: A data frame containing the top 10, 20, and 30 ranked vertices with the highest and lowest edge connectivity.
##############################################################

# R functions

vertices_connectedness_rank_w_features <- function(df) {
  df_row <- df %>% dplyr::select(row) %>% dplyr::mutate(count = 1)
  df_row.agg <- aggregate(count ~ row, df_row, sum) %>% dplyr::arrange(desc(count))
  df_row.agg.high.top10 <- df_row.agg[1:10,] %>% dplyr::rename(id = row) %>% dplyr::mutate(label = "high")
  df_row.agg.low.top10 <- tail(df_row.agg, n = 10) %>% dplyr::rename(id = row) %>% dplyr::mutate(label = "low")
  df_row.agg.all.top10 <- dplyr::bind_rows(df_row.agg.high.top10, df_row.agg.low.top10)
  df_row.agg.all.top10.features <- dplyr::inner_join(df_complete_2_799, df_row.agg.all.top10, by = "id") %>% dplyr::mutate(top = "10")
  
   df_row <- df %>% dplyr::select(row) %>% dplyr::mutate(count = 1)
  df_row.agg <- aggregate(count ~ row, df_row, sum) %>% dplyr::arrange(desc(count))
  df_row.agg.high.top20 <- df_row.agg[1:20,] %>% dplyr::rename(id = row) %>% dplyr::mutate(label = "high")
  df_row.agg.low.top20 <- tail(df_row.agg, n = 20) %>% dplyr::rename(id = row) %>% dplyr::mutate(label = "low")
  df_row.agg.all.top20 <- dplyr::bind_rows(df_row.agg.high.top20, df_row.agg.low.top20)
  df_row.agg.all.top20.features <- dplyr::inner_join(df_complete_2_799, df_row.agg.all.top20, by = "id") %>% dplyr::mutate(top = "20")
  
   df_row <- df %>% dplyr::select(row) %>% dplyr::mutate(count = 1)
  df_row.agg <- aggregate(count ~ row, df_row, sum) %>% dplyr::arrange(desc(count))
  df_row.agg.high.top30 <- df_row.agg[1:30,] %>% dplyr::rename(id = row) %>% dplyr::mutate(label = "high")
  df_row.agg.low.top30 <- tail(df_row.agg, n = 30) %>% dplyr::rename(id = row) %>% dplyr::mutate(label = "low")
  df_row.agg.all.top30 <- dplyr::bind_rows(df_row.agg.high.top30, df_row.agg.low.top30)
  df_row.agg.all.top30.features <- dplyr::inner_join(df_complete_2_799, df_row.agg.all.top30, by = "id") %>% dplyr::mutate(top = "30")
  
  df_tous <- dplyr::bind_rows(df_row.agg.all.top10.features, df_row.agg.all.top20.features, df_row.agg.all.top30.features)
  
  return(df_tous)
}

