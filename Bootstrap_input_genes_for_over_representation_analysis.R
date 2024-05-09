#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
##############################################################
# Input: A list of host genes targeted by HIV
# Object: Calculation of rich factor from input genes bootstrapped in different sample sizes, facilitating diminishing the influence of the devised sample sizes.
##############################################################

# R functions
bootstrap_gene_50_to_msigdb <- function(df) {
  m_tC7 <- msigdbr(species = "Homo sapiens", category = "C7") %>% dplyr::select(gs_name, entrez_gene)
  
  list_bstp_50 <- sample_n(df, 50, replace = T)
  list_bstp_50_symbol <- dplyr::select(list_bstp_50, Gene_symbol)
  list_bstp_50_symbol$Gene_symbol <- as.character(list_bstp_50_symbol$Gene_symbol)
  list_bstp_50_entrezID <- bitr(list_bstp_50_symbol$Gene_symbol, fromType="SYMBOL", toType=c("ENSEMBL", "ENTREZID"), OrgDb= org.Hs.eg.db)
  msigdb_c7_bstp_50 <- data.frame(enricher(list_bstp_50_entrezID$ENTREZID, TERM2GENE = m_tC7))
  
  return(msigdb_c7_bstp_50)
}

bootstrap_gene_60_to_msigdb <- function(df) {
  m_tC7 <- msigdbr(species = "Homo sapiens", category = "C7") %>% dplyr::select(gs_name, entrez_gene)
  
  list_bstp_60 <- sample_n(df, 60, replace = T)
  list_bstp_60_symbol <- dplyr::select(list_bstp_60, Gene_symbol)
  list_bstp_60_symbol$Gene_symbol <- as.character(list_bstp_60_symbol$Gene_symbol)
  list_bstp_60_entrezID <- bitr(list_bstp_60_symbol$Gene_symbol, fromType="SYMBOL", toType=c("ENSEMBL", "ENTREZID"), OrgDb= org.Hs.eg.db)
  msigdb_c7_bstp_60 <- data.frame(enricher(list_bstp_60_entrezID$ENTREZID, TERM2GENE = m_tC7))
  
  return(msigdb_c7_bstp_60)
}

bootstrap_gene_70_to_msigdb <- function(df) {
  m_tC7 <- msigdbr(species = "Homo sapiens", category = "C7") %>% dplyr::select(gs_name, entrez_gene)
  
  list_bstp_70 <- sample_n(df, 70, replace = T)
  list_bstp_70_symbol <- dplyr::select(list_bstp_70, Gene_symbol)
  list_bstp_70_symbol$Gene_symbol <- as.character(list_bstp_70_symbol$Gene_symbol)
  list_bstp_70_entrezID <- bitr(list_bstp_70_symbol$Gene_symbol, fromType="SYMBOL", toType=c("ENSEMBL", "ENTREZID"), OrgDb= org.Hs.eg.db)
  msigdb_c7_bstp_70 <- data.frame(enricher(list_bstp_70_entrezID$ENTREZID, TERM2GENE = m_tC7))
  
  return(msigdb_c7_bstp_70)
}

bootstrap_gene_80_to_msigdb <- function(df) {
  m_tC7 <- msigdbr(species = "Homo sapiens", category = "C7") %>% dplyr::select(gs_name, entrez_gene)
  
  list_bstp_80 <- sample_n(df, 80, replace = T)
  list_bstp_80_symbol <- dplyr::select(list_bstp_80, Gene_symbol)
  list_bstp_80_symbol$Gene_symbol <- as.character(list_bstp_80_symbol$Gene_symbol)
  list_bstp_80_entrezID <- bitr(list_bstp_80_symbol$Gene_symbol, fromType="SYMBOL", toType=c("ENSEMBL", "ENTREZID"), OrgDb= org.Hs.eg.db)
  msigdb_c7_bstp_80 <- data.frame(enricher(list_bstp_80_entrezID$ENTREZID, TERM2GENE = m_tC7))
  
  return(msigdb_c7_bstp_80)
}

bootstrap_gene_100_to_msigdb <- function(df) {
  m_tC7 <- msigdbr(species = "Homo sapiens", category = "C7") %>% dplyr::select(gs_name, entrez_gene)
  
  list_bstp_100 <- sample_n(df, 100, replace = T)
  list_bstp_100_symbol <- dplyr::select(list_bstp_100, Gene_symbol)
  list_bstp_100_symbol$Gene_symbol <- as.character(list_bstp_100_symbol$Gene_symbol)
  list_bstp_100_entrezID <- bitr(list_bstp_100_symbol$Gene_symbol, fromType="SYMBOL", toType=c("ENSEMBL", "ENTREZID"), OrgDb= org.Hs.eg.db)
  msigdb_c7_bstp_100 <- data.frame(enricher(list_bstp_100_entrezID$ENTREZID, TERM2GENE = m_tC7))
  
  return(msigdb_c7_bstp_100)
}

replicate_to_RE <- function(df) {
  df_final <- data.frame()
  
  df_bstp <- as.data.frame(replicate(500, {bootstrap_gene_60_to_msigdb(df)}))
  for(i in 1:length(df_bstp)) {
    if( i > 500) {
      break
    } else {
      df_sub_GeneRatio <- as.data.frame(df_bstp[,i][3])
      df_sub_BgRatio <- as.data.frame(df_bstp[,i][4])
  
      df_sub <- cbind(df_sub_GeneRatio, df_sub_BgRatio)
      df_sub$GeneRatio <- as.numeric( gsub("(\\d+)/(\\d+)", "\\1", df_sub$GeneRatio, perl=T) ) / as.numeric(gsub("(\\d+)/(\\d+)", "\\2", df_sub$GeneRatio, perl=T))
      df_sub$BgRatio <- as.numeric( gsub("(\\d+)/(\\d+)", "\\1", df_sub$BgRatio, perl=T) ) / as.numeric(gsub("(\\d+)/(\\d+)", "\\2", df_sub$BgRatio, perl=T))
      df_sub <- df_sub %>% dplyr::mutate(RF = GeneRatio/BgRatio)
    }
    df_final <- rbind(df_final, df_sub)
  }
  return(df_final)
}
