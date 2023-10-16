#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
# Date: 2023.10.13
##############################################################
# Input: A data frame with random numeric variables
# Object: Breakdown individual genes in the readout file from MSigDb over-representation analysis
##############################################################
# R packages

require(sHmisc)

##############################################################
# R functions

Asso_rechnen <- function(df, nodes) {
  df.mx.cor <- rcorr(as.matrix(t(df)))
  df.mx.cor.out <- flattenCorrMatrix(df.mx.cor$r, df.mx.cor$P)
  
  df.mx.cor.out.p_sel <- df.mx.cor.out %>% dplyr::filter(p < 0.05 | p == 0.05) %>% dplyr::select(row, column, cor)
  
  df.mx.cor.out.p_sel$row <-
    as.integer(df.mx.cor.out.p_sel$row)

  df.mx.cor.out.p_sel$column <-
    as.integer(df.mx.cor.out.p_sel$column)

  df.mx.cor.out.p_sel$cor <- as.integer(df.mx.cor.out.p_sel$cor)


# igraph
df.mx.cor.out.p_sel.igraph <- graph_from_data_frame(d = df.mx.cor.out.p_sel, vertices = nodes, directed = T)

# Assortativity
Asso_count <- assortativity_degree(df.mx.cor.out.p_sel.igraph)

return(Asso_count)
}

