#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
# Date: 2023.11.28
##############################################################
# Input: Correlation matrix
# Object: Calculate the connectedness of enriched immunologic signatures
##############################################################
# R functions

vertex_degree_norl <- function(df) {
  df_list_row <- data.frame(c(1:309))
  names(df_list_row) <- c("row")
  df_list_row$row <- as.numeric(df_list_row$row)
  
  df_row.cor <- df %>% dplyr::select(row, cor)
  df_row.cor.agg <- aggregate(cor ~ row, df_row.cor, mean) %>% dplyr::arrange(row)
  
  df_row <- df %>% dplyr::select(row) %>% dplyr::mutate(count = 1)
  df_row.agg <- aggregate(count ~ row, df_row, sum) %>% dplyr::arrange(row)
  
  df_row.sum.cor <- dplyr::bind_cols(df_row.cor.agg, df_row.agg, by = "row") %>% dplyr::mutate(norl = count/cor)
  df_row.sum.cor_ <- df_row.sum.cor %>% dplyr::select(row...1, norl) %>% dplyr::rename(row = row...1)
  
  
  
  outer_vertex <- dplyr::anti_join(df_list_row, df_row.sum.cor_ , by = "row") %>% dplyr::mutate(norl = 0)
  df_tous <- dplyr::bind_rows(df_row.sum.cor_ , outer_vertex) %>% dplyr::arrange(row)
  
 
  return(df_tous)
}
