#!/usr/bin/env Rscript
rm(list=ls())
##############################################################
# Author: Heng-Chang Chen
##############################################################
# Input: A matrix of predictor variables with corresponding values.
# Object: The area under the curve (AUC) of logistic regression models, constructed by bootstrapping selected numbers of predictor variables using Cat 1 (Figure 3A), Cat 1 and 2 (Figure 3B), Cat 1 and 3 (Figure 3C), and all attributes (Figure 3D), calculated to classify the networks associated with intact versus defective proviruses (top panel), networks in ART-treated patients versus elite controllers (middle panel), and networks associated with intact versus defective proviruses, separated by ART-treated patients versus elite controllers (bottom panel). The x-axis labels represent the number of bootstrapped predictor variables used to construct models. Each classification iteration was repeated 1,000 times for statistical significance.
##############################################################

# provirus
Random_selection_signa_feats_provirus <- function(df) {
  df_provirus <- df %>% dplyr::select(provirus, tpm) %>% dplyr::mutate(id = 1:309)
  df_input <- df %>% dplyr::select(RF.x, is_other_cell, is_CD4_T_cell, is_CD8_T_cell, is_B_cell, is_myeloid_cell, is_proinflammatory_facotr, Response, Count)
  
  df_boostrap <- dplyr::select(df_input, sample(seq_len(ncol(df_input)), size = 8)) %>% dplyr::mutate(id = 1:309)
  df_boostrap_label <- merge(df_provirus, df_boostrap, by = "id")
  df_boostrap_label$id <- NULL
  
  colnames(df_boostrap_label)[3] <- "x1"
  colnames(df_boostrap_label)[4] <- "x2"
  colnames(df_boostrap_label)[5] <- "x3"
  colnames(df_boostrap_label)[6] <- "x4"
  colnames(df_boostrap_label)[7] <- "x5"
  colnames(df_boostrap_label)[8] <- "x6"
  colnames(df_boostrap_label)[9] <- "x7"
  colnames(df_boostrap_label)[10] <- "x8"
  
  # 2. Create training and test samples
   Sample <-sample(c(TRUE, FALSE), nrow(df_boostrap_label), replace=TRUE, prob=c(0.8,0.2))
   train <- df_boostrap_label[Sample, ]
   test <- df_boostrap_label[!Sample, ] 

  # 3. Fit the Logistic Regression Model
   model <- glm(provirus ~ tpm + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8, na.action=na.exclude, family = "binomial", data = train)
  
   # 4 Prediction
   prediction <- predict(model, test, type = "response")
   
   # create roc curve
   roc <- multiclass.roc(test$provirus, prediction)
   
   auc <- auc(roc)
   
   #print(auc)
   return(auc)
}

# patient
Random_selection_signa_feats_patient <- function(df) {
  df_patient <- df %>% dplyr::select(patient, tpm) %>% dplyr::mutate(id = 1:309)
  df_input <- df %>% dplyr::select(RF.x, is_other_cell, is_CD4_T_cell, is_CD8_T_cell, is_B_cell, is_myeloid_cell, is_proinflammatory_facotr, Response, Count)
  
  df_boostrap <- dplyr::select(df_input, sample(seq_len(ncol(df_input)), size = 8)) %>% dplyr::mutate(id = 1:309)
  df_boostrap_label <- merge(df_patient, df_boostrap, by = "id")
  df_boostrap_label$id <- NULL
  
  colnames(df_boostrap_label)[3] <- "x1"
  colnames(df_boostrap_label)[4] <- "x2"
  colnames(df_boostrap_label)[5] <- "x3"
  colnames(df_boostrap_label)[6] <- "x4"
  colnames(df_boostrap_label)[7] <- "x5"
  colnames(df_boostrap_label)[8] <- "x6"
  colnames(df_boostrap_label)[9] <- "x7"
  colnames(df_boostrap_label)[10] <- "x8"
  
  # 2. Create training and test samples
   Sample <-sample(c(TRUE, FALSE), nrow(df_boostrap_label), replace=TRUE, prob=c(0.8,0.2))
   train <- df_boostrap_label[Sample, ]
   test <- df_boostrap_label[!Sample, ] 

  # 3. Fit the Logistic Regression Model
   model <- glm(patient ~ tpm + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8, na.action=na.exclude, family = "binomial", data = train)
  
   # 4 Prediction
   prediction <- predict(model, test, type = "response")
   
   # create roc curve
   roc <- multiclass.roc(test$patient, prediction)
   
   auc <- auc(roc)
   
   return(auc)
}

# type
Random_selection_signa_feats_type <- function(df) {
  df_type <- df %>% dplyr::select(type, tpm) %>% dplyr::mutate(id = 1:309)
  df_input <- df %>% dplyr::select(RF.x, is_other_cell, is_CD4_T_cell, is_CD8_T_cell, is_B_cell, is_myeloid_cell, is_proinflammatory_facotr, Response, Count)
  
  df_boostrap <- dplyr::select(df_input, sample(seq_len(ncol(df_input)), size = 8)) %>% dplyr::mutate(id = 1:309)
  df_boostrap_label <- merge(df_type, df_boostrap, by = "id")
  df_boostrap_label$id <- NULL
  
  colnames(df_boostrap_label)[3] <- "x1"
  colnames(df_boostrap_label)[4] <- "x2"
  colnames(df_boostrap_label)[5] <- "x3"
  colnames(df_boostrap_label)[6] <- "x4"
  colnames(df_boostrap_label)[7] <- "x5"
  colnames(df_boostrap_label)[8] <- "x6"
  colnames(df_boostrap_label)[9] <- "x7"
  colnames(df_boostrap_label)[10] <- "x8"
  
  # 2. Create training and test samples
   Sample <-sample(c(TRUE, FALSE), nrow(df_boostrap_label), replace=TRUE, prob=c(0.8,0.2))
   train <- df_boostrap_label[Sample, ]
   test <- df_boostrap_label[!Sample, ] 

  # 3. Fit the Logistic Regression Model
   model <- glm(type ~ tpm + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8, na.action=na.exclude, family = "binomial", data = train)
  
   # 4 Prediction
   prediction <- predict(model, test, type = "response")
   
   # create roc curve
   roc <- multiclass.roc(test$type, prediction)
   
   auc <- auc(roc)
   
   #print(auc)
   return(auc)
}
