```{r Random selection of feature: cat 1 computing 2 features}
df_cat1_provirus_2f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat1_provirus_2f) <- c("AUC")
df_cat1_provirus_2f <- df_cat1_provirus_2f %>% dplyr::mutate(variables = "2", classify = "provirus")

df_cat1_patient_2f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat1_patient_2f) <- c("AUC")
df_cat1_patient_2f <- df_cat1_patient_2f %>% dplyr::mutate(variables = "2", classify = "patient")

df_cat1_type_2f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat1_type_2f) <- c("AUC")
df_cat1_type_2f <- df_cat1_type_2f %>% dplyr::mutate(variables = "2", classify = "type")
```
```{r Random selection of feature: cat 1 computing 3 features}
df_cat1_provirus_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat1_provirus_3f) <- c("AUC")
df_cat1_provirus_3f <- df_cat1_provirus_3f %>% dplyr::mutate(variables = "3", classify = "provirus")

df_cat1_patient_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat1_patient_3f) <- c("AUC")
df_cat1_patient_3f <- df_cat1_patient_3f %>% dplyr::mutate(variables = "3", classify = "patient")

df_cat1_type_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat1_type_3f) <- c("AUC")
df_cat1_type_3f <- df_cat1_type_3f %>% dplyr::mutate(variables = "3", classify = "type")
```
```{r Random selection of feature: cat 1 computing 4 features}
df_cat1_provirus_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat1_provirus_4f) <- c("AUC")
df_cat1_provirus_4f <- df_cat1_provirus_4f %>% dplyr::mutate(variables = "4", classify = "provirus")

df_cat1_patient_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat1_patient_4f) <- c("AUC")
df_cat1_patient_4f <- df_cat1_patient_4f %>% dplyr::mutate(variables = "4", classify = "patient")

df_cat1_type_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat1_type_4f) <- c("AUC")
df_cat1_type_4f <- df_cat1_type_4f %>% dplyr::mutate(variables = "4", classify = "type")
```
```{r Random selection of feature: cat 1 computing 5 features}
df_cat1_provirus_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat1_provirus_5f) <- c("AUC")
df_cat1_provirus_5f <- df_cat1_provirus_5f %>% dplyr::mutate(variables = "5", classify = "provirus")

df_cat1_patient_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat1_patient_5f) <- c("AUC")
df_cat1_patient_5f <- df_cat1_patient_5f %>% dplyr::mutate(variables = "5", classify = "patient")

df_cat1_type_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat1_type_5f) <- c("AUC")
df_cat1_type_5f <- df_cat1_type_5f %>% dplyr::mutate(variables = "5", classify = "type")
```
```{r Random selection of feature: cat 1 computing 6 features}
df_cat1_provirus_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat1_provirus_6f) <- c("AUC")
df_cat1_provirus_6f <- df_cat1_provirus_6f %>% dplyr::mutate(variables = "6", classify = "provirus")

df_cat1_patient_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat1_patient_6f) <- c("AUC")
df_cat1_patient_6f <- df_cat1_patient_6f %>% dplyr::mutate(variables = "6", classify = "patient")

df_cat1_type_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat1_type_6f) <- c("AUC")
df_cat1_type_6f <- df_cat1_type_6f %>% dplyr::mutate(variables = "6", classify = "type")
```
```{r Random selection of feature: cat 1 computing 7 features}
df_cat1_provirus_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat1_provirus_7f) <- c("AUC")
df_cat1_provirus_7f <- df_cat1_provirus_7f %>% dplyr::mutate(variables = "7", classify = "provirus")

df_cat1_patient_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat1_patient_7f) <- c("AUC")
df_cat1_patient_7f <- df_cat1_patient_7f %>% dplyr::mutate(variables = "7", classify = "patient")

df_cat1_type_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat1_type_7f) <- c("AUC")
df_cat1_type_7f <- df_cat1_type_7f %>% dplyr::mutate(variables = "7", classify = "type")
```
```{r Random selection of feature: cat 1 computing 8 features}
df_cat1_provirus_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat1_provirus_8f) <- c("AUC")
df_cat1_provirus_8f <- df_cat1_provirus_8f %>% dplyr::mutate(variables = "8", classify = "provirus")

df_cat1_patient_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat1_patient_8f) <- c("AUC")
df_cat1_patient_8f <- df_cat1_patient_8f %>% dplyr::mutate(variables = "8", classify = "patient")

df_cat1_type_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat1_type_8f) <- c("AUC")
df_cat1_type_8f <- df_cat1_type_8f %>% dplyr::mutate(variables = "8", classify = "type")
```
```{r plot cat 1 boostrapping}
df_cat1_alle <- dplyr::bind_rows(df_cat1_provirus_2f, df_cat1_patient_2f, df_cat1_type_2f, df_cat1_provirus_3f, df_cat1_patient_3f, df_cat1_type_3f, df_cat1_provirus_4f, df_cat1_patient_4f, df_cat1_type_4f, df_cat1_provirus_5f, df_cat1_patient_5f, df_cat1_type_5f, df_cat1_provirus_6f, df_cat1_patient_6f, df_cat1_type_6f, df_cat1_provirus_7f, df_cat1_patient_7f, df_cat1_type_7f, df_cat1_provirus_8f, df_cat1_patient_8f, df_cat1_type_8f) %>% dplyr::mutate(cat = "1")

Rechnung_classify <- c("provirus", "patient", "type")
df_cat1_alle$classify <- factor(df_cat1_alle$classify, levels = Rechnung_classify)

svg("/home/labadmin/Documents/Arbeitplatz/Projekten/IS_Genome_Property/Etage_II/Abb/AUC/df_cat1_alle.svg", height = 8, width = 4)
ggplot(df_cat1_alle, aes(x = variables, y = AUC, fill = variables))+geom_boxplot()+theme_bw()+facet_grid(classify ~ .)+scale_fill_brewer(palette = "Blues")+theme(axis.title.x=element_text(size=10), axis.text.x=element_text(size=10, colour = "black",angle = 0, vjust = 0), axis.title.y = element_text(size=10),axis.text.y = element_text(size = 10, colour = "black"))
dev.off()
```
```{r Random selection of feature: cat 2 computing 2 features}
df_cat2_provirus_2f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_2f) <- c("AUC")
df_cat2_provirus_2f <- df_cat2_provirus_2f %>% dplyr::mutate(variables = "2", classify = "provirus")

df_cat2_patient_2f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_2f) <- c("AUC")
df_cat2_patient_2f <- df_cat2_patient_2f %>% dplyr::mutate(variables = "2", classify = "patient")

df_cat2_type_2f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_2f) <- c("AUC")
df_cat2_type_2f <- df_cat2_type_2f %>% dplyr::mutate(variables = "2", classify = "type")
```
```{r Random selection of feature: cat 2 computing 3 features}
df_cat2_provirus_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_3f) <- c("AUC")
df_cat2_provirus_3f <- df_cat2_provirus_3f %>% dplyr::mutate(variables = "3", classify = "provirus")

df_cat2_patient_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_3f) <- c("AUC")
df_cat2_patient_3f <- df_cat2_patient_3f %>% dplyr::mutate(variables = "3", classify = "patient")

df_cat2_type_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_3f) <- c("AUC")
df_cat2_type_3f <- df_cat2_type_3f %>% dplyr::mutate(variables = "3", classify = "type")
```
```{r Random selection of feature: cat 2 computing 4 features}
df_cat2_provirus_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_4f) <- c("AUC")
df_cat2_provirus_4f <- df_cat2_provirus_4f %>% dplyr::mutate(variables = "4", classify = "provirus")

df_cat2_patient_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_4f) <- c("AUC")
df_cat2_patient_4f <- df_cat2_patient_4f %>% dplyr::mutate(variables = "4", classify = "patient")

df_cat2_type_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_4f) <- c("AUC")
df_cat2_type_4f <- df_cat2_type_4f %>% dplyr::mutate(variables = "4", classify = "type")
```
```{r Random selection of feature: cat 2 computing 5 features}
df_cat2_provirus_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_5f) <- c("AUC")
df_cat2_provirus_5f <- df_cat2_provirus_5f %>% dplyr::mutate(variables = "5", classify = "provirus")

df_cat2_patient_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_5f) <- c("AUC")
df_cat2_patient_5f <- df_cat2_patient_5f %>% dplyr::mutate(variables = "5", classify = "patient")

df_cat2_type_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_5f) <- c("AUC")
df_cat2_type_5f <- df_cat2_type_5f %>% dplyr::mutate(variables = "5", classify = "type")
```
```{r Random selection of feature: cat 2 computing 6 features}
df_cat2_provirus_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_6f) <- c("AUC")
df_cat2_provirus_6f <- df_cat2_provirus_6f %>% dplyr::mutate(variables = "6", classify = "provirus")

df_cat2_patient_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_6f) <- c("AUC")
df_cat2_patient_6f <- df_cat2_patient_6f %>% dplyr::mutate(variables = "6", classify = "patient")

df_cat2_type_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_6f) <- c("AUC")
df_cat2_type_6f <- df_cat2_type_6f %>% dplyr::mutate(variables = "6", classify = "type")
```
```{r Random selection of feature: cat 2 computing 7 features}
df_cat2_provirus_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_7f) <- c("AUC")
df_cat2_provirus_7f <- df_cat2_provirus_7f %>% dplyr::mutate(variables = "7", classify = "provirus")

df_cat2_patient_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_7f) <- c("AUC")
df_cat2_patient_7f <- df_cat2_patient_7f %>% dplyr::mutate(variables = "7", classify = "patient")

df_cat2_type_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_7f) <- c("AUC")
df_cat2_type_7f <- df_cat2_type_7f %>% dplyr::mutate(variables = "7", classify = "type")
```
```{r Random selection of feature: cat 2 computing 8 features}
df_cat2_provirus_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_8f) <- c("AUC")
df_cat2_provirus_8f <- df_cat2_provirus_8f %>% dplyr::mutate(variables = "8", classify = "provirus")

df_cat2_patient_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_8f) <- c("AUC")
df_cat2_patient_8f <- df_cat2_patient_8f %>% dplyr::mutate(variables = "8", classify = "patient")

df_cat2_type_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_8f) <- c("AUC")
df_cat2_type_8f <- df_cat2_type_8f %>% dplyr::mutate(variables = "8", classify = "type")
```
```{r Random selection of feature: cat 2 computing 9 features}
df_cat2_provirus_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat2_provirus_9f) <- c("AUC")
df_cat2_provirus_9f <- df_cat2_provirus_9f %>% dplyr::mutate(variables = "9", classify = "provirus")

df_cat2_patient_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat2_patient_9f) <- c("AUC")
df_cat2_patient_9f <- df_cat2_patient_9f %>% dplyr::mutate(variables = "9", classify = "patient")

df_cat2_type_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat2_type_9f) <- c("AUC")
df_cat2_type_9f <- df_cat2_type_9f %>% dplyr::mutate(variables = "9", classify = "type")
```
```{r plot cat 2 boostrapping}
df_cat2_alle <- dplyr::bind_rows(df_cat2_provirus_2f, df_cat2_patient_2f, df_cat2_type_2f, df_cat2_provirus_3f, df_cat2_patient_3f, df_cat2_type_3f, df_cat2_provirus_4f, df_cat2_patient_4f, df_cat2_type_4f, df_cat2_provirus_5f, df_cat2_patient_5f, df_cat2_type_5f, df_cat2_provirus_6f, df_cat2_patient_6f, df_cat2_type_6f, df_cat2_provirus_7f, df_cat2_patient_7f, df_cat2_type_7f, df_cat2_provirus_8f, df_cat2_patient_8f, df_cat2_type_8f, df_cat2_provirus_9f, df_cat2_patient_9f, df_cat2_type_9f) %>% dplyr::mutate(cat = "2")

Rechnung_classify <- c("provirus", "patient", "type")
df_cat2_alle$classify <- factor(df_cat2_alle$classify, levels = Rechnung_classify)

svg("/home/labadmin/Documents/Arbeitplatz/Projekten/IS_Genome_Property/Etage_II/Abb/AUC/df_cat2_alle.svg", height = 8, width = 4)
ggplot(df_cat2_alle, aes(x = variables, y = AUC, fill = variables))+geom_boxplot()+theme_bw()+facet_grid(classify ~ .)+scale_fill_brewer(palette = "Blues")+theme(axis.title.x=element_text(size=10), axis.text.x=element_text(size=10, colour = "black",angle = 0, vjust = 0), axis.title.y = element_text(size=10),axis.text.y = element_text(size = 10, colour = "black"))
dev.off()
```
```{r Random selection of feature: cat 3 computing 3 features}
df_cat3_provirus_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_3f) <- c("AUC")
df_cat3_provirus_3f <- df_cat3_provirus_3f %>% dplyr::mutate(variables = "3", classify = "provirus")

df_cat3_patient_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_3f) <- c("AUC")
df_cat3_patient_3f <- df_cat3_patient_3f %>% dplyr::mutate(variables = "3", classify = "patient")

df_cat3_type_3f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_3f) <- c("AUC")
df_cat3_type_3f <- df_cat3_type_3f %>% dplyr::mutate(variables = "3", classify = "type")
```
```{r Random selection of feature: cat 3 computing 4 features}
df_cat3_provirus_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_4f) <- c("AUC")
df_cat3_provirus_4f <- df_cat3_provirus_4f %>% dplyr::mutate(variables = "4", classify = "provirus")

df_cat3_patient_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_4f) <- c("AUC")
df_cat3_patient_4f <- df_cat3_patient_4f %>% dplyr::mutate(variables = "4", classify = "patient")

df_cat3_type_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_4f) <- c("AUC")
df_cat3_type_4f <- df_cat3_type_4f %>% dplyr::mutate(variables = "4", classify = "type")
```
```{r Random selection of feature: cat 3 computing 5 features}
df_cat3_provirus_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_5f) <- c("AUC")
df_cat3_provirus_5f <- df_cat3_provirus_5f %>% dplyr::mutate(variables = "5", classify = "provirus")

df_cat3_patient_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_5f) <- c("AUC")
df_cat3_patient_5f <- df_cat3_patient_5f %>% dplyr::mutate(variables = "5", classify = "patient")

df_cat3_type_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_5f) <- c("AUC")
df_cat3_type_5f <- df_cat3_type_5f %>% dplyr::mutate(variables = "5", classify = "type")
```
```{r Random selection of feature: cat 3 computing 6 features}
df_cat3_provirus_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_6f) <- c("AUC")
df_cat3_provirus_6f <- df_cat3_provirus_6f %>% dplyr::mutate(variables = "6", classify = "provirus")

df_cat3_patient_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_6f) <- c("AUC")
df_cat3_patient_6f <- df_cat3_patient_6f %>% dplyr::mutate(variables = "6", classify = "patient")

df_cat3_type_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_6f) <- c("AUC")
df_cat3_type_6f <- df_cat3_type_6f %>% dplyr::mutate(variables = "6", classify = "type")
```
```{r Random selection of feature: cat 3 computing 7 features}
df_cat3_provirus_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_7f) <- c("AUC")
df_cat3_provirus_7f <- df_cat3_provirus_7f %>% dplyr::mutate(variables = "7", classify = "provirus")

df_cat3_patient_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_7f) <- c("AUC")
df_cat3_patient_7f <- df_cat3_patient_7f %>% dplyr::mutate(variables = "7", classify = "patient")

df_cat3_type_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_7f) <- c("AUC")
df_cat3_type_7f <- df_cat3_type_7f %>% dplyr::mutate(variables = "7", classify = "type")
```
```{r Random selection of feature: cat 3 computing 8 features}
df_cat3_provirus_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_8f) <- c("AUC")
df_cat3_provirus_8f <- df_cat3_provirus_8f %>% dplyr::mutate(variables = "8", classify = "provirus")

df_cat3_patient_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_8f) <- c("AUC")
df_cat3_patient_8f <- df_cat3_patient_8f %>% dplyr::mutate(variables = "8", classify = "patient")

df_cat3_type_8f <- as.data.frame(replicate(1080, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_8f) <- c("AUC")
df_cat3_type_8f <- df_cat3_type_8f %>% dplyr::mutate(variables = "8", classify = "type")
```
```{r Random selection of feature: cat 3 computing 9 features}
df_cat3_provirus_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_9f) <- c("AUC")
df_cat3_provirus_9f <- df_cat3_provirus_9f %>% dplyr::mutate(variables = "9", classify = "provirus")

df_cat3_patient_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_9f) <- c("AUC")
df_cat3_patient_9f <- df_cat3_patient_9f %>% dplyr::mutate(variables = "9", classify = "patient")

df_cat3_type_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_9f) <- c("AUC")
df_cat3_type_9f <- df_cat3_type_9f %>% dplyr::mutate(variables = "9", classify = "type")
```
```{r Random selection of feature: cat 3 computing 10 features}
df_cat3_provirus_10f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat3_provirus_10f) <- c("AUC")
df_cat3_provirus_10f <- df_cat3_provirus_10f %>% dplyr::mutate(variables = "10", classify = "provirus")

df_cat3_patient_10f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat3_patient_10f) <- c("AUC")
df_cat3_patient_10f <- df_cat3_patient_10f %>% dplyr::mutate(variables = "10", classify = "patient")

df_cat3_type_10f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat3_type_10f) <- c("AUC")
df_cat3_type_10f <- df_cat3_type_10f %>% dplyr::mutate(variables = "10", classify = "type")
```
```{r plot cat 3 boostrapping}
df_cat3_alle <- dplyr::bind_rows(df_cat3_provirus_3f, df_cat3_patient_3f, df_cat3_type_3f, df_cat3_provirus_4f, df_cat3_patient_4f, df_cat3_type_4f, df_cat3_provirus_5f, df_cat3_patient_5f, df_cat3_type_5f, df_cat3_provirus_6f, df_cat3_patient_6f, df_cat3_type_6f, df_cat3_provirus_7f, df_cat3_patient_7f, df_cat3_type_7f, df_cat3_provirus_8f, df_cat3_patient_8f, df_cat3_type_8f, df_cat3_provirus_9f, df_cat3_patient_9f, df_cat3_type_9f, df_cat3_provirus_10f, df_cat3_patient_10f, df_cat3_type_10f) %>% dplyr::mutate(cat = "3")

Rechnung_classify <- c("provirus", "patient", "type")
Rechnung_variables <- c("3", "4", "5", "6", "7", "8", "9", "10")
df_cat3_alle$classify <- factor(df_cat3_alle$classify, levels = Rechnung_classify)
df_cat3_alle$variables <- factor(df_cat3_alle$variables, levels = Rechnung_variables)

svg("/home/labadmin/Documents/Arbeitplatz/Projekten/IS_Genome_Property/Etage_II/Abb/AUC/df_cat3_alle.svg", height = 8, width = 4)
ggplot(df_cat3_alle, aes(x = variables, y = AUC, fill = variables))+geom_boxplot()+theme_bw()+facet_grid(classify ~ .)+scale_fill_brewer(palette = "Blues")+theme(axis.title.x=element_text(size=10), axis.text.x=element_text(size=10, colour = "black",angle = 0, vjust = 0), axis.title.y = element_text(size=10),axis.text.y = element_text(size = 10, colour = "black"))
dev.off()
```
```{r Random selection of feature: cat 4 computing 4 features}
df_cat4_provirus_4f <- as.data.frame(replicate(500, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_4f) <- c("AUC")
df_cat4_provirus_4f <- df_cat4_provirus_4f %>% dplyr::mutate(variables = "4", classify = "provirus")

df_cat4_patient_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_4f) <- c("AUC")
df_cat4_patient_4f <- df_cat4_patient_4f %>% dplyr::mutate(variables = "4", classify = "patient")

df_cat4_type_4f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_4f) <- c("AUC")
df_cat4_type_4f <- df_cat4_type_4f %>% dplyr::mutate(variables = "4", classify = "type")
```
```{r Random selection of feature: cat 4 computing 5 features}
df_cat4_provirus_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_5f) <- c("AUC")
df_cat4_provirus_5f <- df_cat4_provirus_5f %>% dplyr::mutate(variables = "5", classify = "provirus")

df_cat4_patient_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_5f) <- c("AUC")
df_cat4_patient_5f <- df_cat4_patient_5f %>% dplyr::mutate(variables = "5", classify = "patient")

df_cat4_type_5f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_5f) <- c("AUC")
df_cat4_type_5f <- df_cat4_type_5f %>% dplyr::mutate(variables = "5", classify = "type")
```
```{r Random selection of feature: cat 4 computing 6 features}
df_cat4_provirus_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_6f) <- c("AUC")
df_cat4_provirus_6f <- df_cat4_provirus_6f %>% dplyr::mutate(variables = "6", classify = "provirus")

df_cat4_patient_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_6f) <- c("AUC")
df_cat4_patient_6f <- df_cat4_patient_6f %>% dplyr::mutate(variables = "6", classify = "patient")

df_cat4_type_6f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_6f) <- c("AUC")
df_cat4_type_6f <- df_cat4_type_6f %>% dplyr::mutate(variables = "6", classify = "type")
```
```{r Random selection of feature: cat 4 computing 7 features}
df_cat4_provirus_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_7f) <- c("AUC")
df_cat4_provirus_7f <- df_cat4_provirus_7f %>% dplyr::mutate(variables = "7", classify = "provirus")

df_cat4_patient_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_7f) <- c("AUC")
df_cat4_patient_7f <- df_cat4_patient_7f %>% dplyr::mutate(variables = "7", classify = "patient")

df_cat4_type_7f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_7f) <- c("AUC")
df_cat4_type_7f <- df_cat4_type_7f %>% dplyr::mutate(variables = "7", classify = "type")
```
```{r Random selection of feature: cat 4 computing 8 features}
df_cat4_provirus_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_8f) <- c("AUC")
df_cat4_provirus_8f <- df_cat4_provirus_8f %>% dplyr::mutate(variables = "8", classify = "provirus")

df_cat4_patient_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_8f) <- c("AUC")
df_cat4_patient_8f <- df_cat4_patient_8f %>% dplyr::mutate(variables = "8", classify = "patient")

df_cat4_type_8f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_8f) <- c("AUC")
df_cat4_type_8f <- df_cat4_type_8f %>% dplyr::mutate(variables = "8", classify = "type")
```
```{r Random selection of feature: cat 4 computing 9 features}
df_cat4_provirus_9f <- as.data.frame(replicate(500, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_9f) <- c("AUC")
df_cat4_provirus_9f <- df_cat4_provirus_9f %>% dplyr::mutate(variables = "9", classify = "provirus")

df_cat4_patient_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_9f) <- c("AUC")
df_cat4_patient_9f <- df_cat4_patient_9f %>% dplyr::mutate(variables = "9", classify = "patient")

df_cat4_type_9f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_9f) <- c("AUC")
df_cat4_type_9f <- df_cat4_type_9f %>% dplyr::mutate(variables = "9", classify = "type")
```
```{r Random selection of feature: cat 4 computing 10 features}
df_cat4_provirus_10f <- as.data.frame(replicate(500, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_10f) <- c("AUC")
df_cat4_provirus_10f <- df_cat4_provirus_10f %>% dplyr::mutate(variables = "10", classify = "provirus")

df_cat4_patient_10f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_10f) <- c("AUC")
df_cat4_patient_10f <- df_cat4_patient_10f %>% dplyr::mutate(variables = "10", classify = "patient")

df_cat4_type_10f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_10f) <- c("AUC")
df_cat4_type_10f <- df_cat4_type_10f %>% dplyr::mutate(variables = "10", classify = "type")
```
```{r Random selection of feature: cat 4 computing 11 features}
df_cat4_provirus_11f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_provirus(df_complete_2_799_as.fac)}))
names(df_cat4_provirus_11f) <- c("AUC")
df_cat4_provirus_11f <- df_cat4_provirus_11f %>% dplyr::mutate(variables = "11", classify = "provirus")

df_cat4_patient_11f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_patient(df_complete_2_799_as.fac)}))
names(df_cat4_patient_11f) <- c("AUC")
df_cat4_patient_11f <- df_cat4_patient_11f %>% dplyr::mutate(variables = "11", classify = "patient")

df_cat4_type_11f <- as.data.frame(replicate(1000, {Random_selection_signa_feats_type(df_complete_2_799_as.fac)}))
names(df_cat4_type_11f) <- c("AUC")
df_cat4_type_11f <- df_cat4_type_11f %>% dplyr::mutate(variables = "11", classify = "type")
