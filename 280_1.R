install.packages("BiocManager")
BiocManager::install("SummarizedExperiment")

library(SummarizedExperiment)
tcga_data <- readRDS("tcga_brca.rds")
class(tcga_data) 

tcga_counts <- assay(tcga_data)
tcga_meta <- as.data.frame(colData(tcga_data))

write.csv(tcga_counts, "TCGA_BRCA_Counts.csv", row.names = TRUE)
write.csv(tcga_meta, "TCGA_BRCA_Metadata.csv", row.names = TRUE)

gtex_data <- readRDS("gtex_breast.rds")
gtex_counts <- assay(gtex_data)
gtex_meta <- as.data.frame(colData(gtex_data))

write.csv(gtex_counts, "GTEx_Breast_Counts.csv", row.names = TRUE)
write.csv(gtex_meta, "GTEx_Breast_Metadata.csv", row.names = TRUE)
