#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
# Date: 2023.11.28
##############################################################
# Input: Correlation matrix (undirected)
# Object: Calculate the connectedness of enriched immunologic signatures
##############################################################
# R functions

vertex_degree_rc <- function(df) {
  #row
  df_list_row <- data.frame(c(1:309))
  names(df_list_row) <- c("row")
  df_list_row$row <- as.numeric(df_list_row$row)
  
  df_row <- df %>% dplyr::select(row) %>% dplyr::mutate(count_r = 1)
  df_row.agg <- aggregate(count_r ~ row, df_row, sum) %>% dplyr::arrange(row)
  
  outer_vertex.r <- dplyr::anti_join(df_list_row, df_row.agg, by = "row") %>% dplyr::mutate(count_r = 0)
  df_tous.r <- dplyr::bind_rows(df_row.agg, outer_vertex.r) %>% dplyr::arrange(row) %>% dplyr::mutate(ID = c(1:309))
  
  #column
  df_list_column <- data.frame(c(1:309))
  names(df_list_column) <- c("column")
  df_list_column$column <- as.numeric(df_list_column$column)
  
  df_column <- df %>% dplyr::select(column) %>% dplyr::mutate(count_c = 1)
  df_column.agg <- aggregate(count_c ~ column, df_column, sum) %>% dplyr::arrange(column)
  

  outer_vertex.c <- dplyr::anti_join(df_list_column, df_column.agg, by = "column") %>% dplyr::mutate(count_c = 0)
  df_tous.c <- dplyr::bind_rows(df_column.agg, outer_vertex.c) %>% dplyr::arrange(column) %>% dplyr::mutate(ID = c(1:309))
  
  df_tous <- dplyr::bind_cols(df_tous.r, df_tous.c, by = "ID") %>% dplyr::select(row, count_r, column, count_c, ID...3) %>% dplyr::mutate(count_sum = (count_r + count_c)) %>% dplyr::rename(ID = ID...3)
  
  return(df_tous)
}
