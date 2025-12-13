# scripts/01_export_counts_meta.R

library(SummarizedExperiment)

# TCGA
tcga_data <- readRDS(file.path("data","tcga_brca.rds"))
tcga_counts <- assay(tcga_data)
tcga_meta <- as.data.frame(colData(tcga_data))

write.csv(tcga_counts, file.path("output","TCGA_BRCA_Counts.csv"), row.names = TRUE)
write.csv(tcga_meta, file.path("output","TCGA_BRCA_Metadata.csv"), row.names = TRUE)

gtex_data <- readRDS(file.path("data","gtex_breast.rds"))
gtex_counts <- assay(gtex_data)
gtex_meta <- as.data.frame(colData(gtex_data))

write.csv(gtex_counts, file.path("output","GTEx_Breast_Counts.csv"), row.names = TRUE)
write.csv(gtex_meta, file.path("output","GTEx_Breast_Metadata.csv"), row.names = TRUE)
