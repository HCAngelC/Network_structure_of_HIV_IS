#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
# Date: 2023.10.09
##############################################################
# Input: Readout file from MSigDb over-representation analysis
# Object: Breakdown individual genes in the readout file from MSigDb over-representation analysis
##############################################################
# R packages

require(stringr)

##############################################################
# R functions
Breakdown_gene_list_art_long <- function(df) {
  rownames(df) <- NULL
  
  df_final <- data.frame()
  for(i in 1:nrow(df)) {
    if(i > max_of_rows) {
      break
    } else {
      df_sub <- as.data.frame(str_extract_all(df[i, 18], "\\w+")[[1]]) %>% dplyr::mutate(ID = df[i, 1], Description = df[i, 2], type = df[i, 3], patient = df[i, 4], period = df[i, 5], is_other_cell = df[i, 6], is_CD4_T_cell = df[i, 7], is_CD8_T_cell = df[i, 8], is_B_cell = df[i, 9], is_myeloid_cell = df[i, 10], is_proinflammatory_factor = df[i, 11], Response = df[i, 12],GeneRatio = df[i, 13], BgRatio = df[i, 14], pvalue = df[i, 15], p.adjust = df[i, 16], qvalue = df[i, 17], Count = df[i, 19], RF = df[i, 20])
      names(df_sub) <- c("genes", "ID", "Description", "type", "patient", "period", "is_other_cell", "is_CD4_T_cell", "is_CD8_T_cell", "is_B_cell", "is_myeloid_cell", "is_proinflammatory_factor", "Response", "GeneRatio", "BgRatio", "pvalue", "p.adjust", "qvalue", "Count", "RF")
    }
    df_final <- rbind(df_final, df_sub) 

  }
  return(df_final) 
}
