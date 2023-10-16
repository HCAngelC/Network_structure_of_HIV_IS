#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
# Date: 2023.10.13
##############################################################
# Input: A dataframe with random numeric variables
# Object: Breakdown individual genes in the readout file from MSigDb over-representation analysis
##############################################################
# R packages

require(sHmisc)

##############################################################
# R functions

Boostrap_n_rows_for_asso <- function(df, df_id) {
  boostrap_df <- sample_n(df, 100, replace = T)
  boostrap_df$id <- c(1:100)
  rownames(boostrap_df) <- boostrap_df$id
  boostrap_df$id < NULL
  boostrap_df.mx.cor <- rcorr(as.matrix(t(boostrap_df)))
  boostrap_df.mx.cor.out <- flattenCorrMatrix(boostrap_df.mx.cor$r, boostrap_df.mx.cor$P)
  
  boostrap_df.mx.cor.out.p_sel <- boostrap_df.mx.cor.out %>% dplyr::filter(p < 0.05 | p == 0.05) %>% dplyr::select(row, column, cor)
  
  boostrap_df.mx.cor.out.p_sel$row <-
    as.integer(boostrap_df.mx.cor.out.p_sel$row)

  boostrap_df.mx.cor.out.p_sel$column <-
    as.integer(boostrap_df.mx.cor.out.p_sel$column)

  boostrap_df.mx.cor.out.p_sel$cor <- as.integer(boostrap_df.mx.cor.out.p_sel$cor)

  nodes_cont <- df_id %>% dplyr::select(id, type)

# igraph
boostrap_df.mx.cor.out.p_sel.igraph <- graph_from_data_frame(d = boostrap_df.mx.cor.out.p_sel, vertices = nodes_cont, directed = T)

# Assortativity
Asso_count <- assortativity_degree(boostrap_df.mx.cor.out.p_sel.igraph)
Asso_count <- assortativity_nominal(boostrap_df.mx.cor.out.p_sel.igraph, as.integer(as.factor(V(boostrap_df.mx.cor.out.p_sel.igraph)$type)))


return(Asso_count)
}
